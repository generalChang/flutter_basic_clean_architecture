import 'dart:async';
import 'dart:math' as m;
import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

part 'generated/socket_service.g.dart';

enum SocketConnectionState { connecting, connected, disconnected, reconnecting }

@Riverpod(keepAlive: true)
SocketService socketService(Ref ref) {
  final svc = SocketService('websocket server url');
  svc.init(); // ⭐️ 생성 시 바로 초기화
  ref.onDispose(svc.dispose);
  return svc;
}

class SocketService with WidgetsBindingObserver {
  SocketService(this.serverUrl);

  late io.Socket _socket;
  final String serverUrl;

  // 재연결 파라미터
  final int _maxRetryDelaySec = 60;
  int _retryCount = 0;
  Timer? _reconnectTimer;

  // 상태/네트워크
  bool _initialized = false;
  StreamSubscription<List<ConnectivityResult>>? _connSub;

  // 외부 콜백/스트림
  final List<void Function(io.Socket socket)> _reconnectListeners = [];
  final Map<String, StreamController<dynamic>> _eventControllers = {};
  final _stateCtrl = StreamController<SocketConnectionState>.broadcast();

  // 상태 노출
  Stream<SocketConnectionState> get connectionStateStream => _stateCtrl.stream;
  SocketConnectionState _state = SocketConnectionState.disconnected;
  SocketConnectionState get state => _state;
  bool get isConnected => _socket.connected;


  // 연결 상태 변경
  void _emitState(SocketConnectionState s) {
    if (_state == s) return;
    _state = s;
    if (!_stateCtrl.isClosed) _stateCtrl.add(s);
  }

  void init({
    Duration pingInterval = const Duration(seconds: 25),
    Duration pingTimeout = const Duration(seconds: 20),
    Map<String, dynamic>? extraHeaders,
    String? path,
  }) {
    if (_initialized) return;
    _initialized = true;

    // 옵저버 (테스트 환경 가드)
    WidgetsBinding.instance.addObserver(this);

    // 소켓 초기화: autoconnect/reconnection 비활성화(직접 제어)
    _socket = io.io(
        serverUrl,
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .disableReconnection()
            .build());


    // 최초 연결 또는 재연결 시 호출됨
    _socket.onConnect((_) {
      log('[SOCKET] Connected');
      _retryCount = 0;
      _emitState(SocketConnectionState.connected);

      _restoreEventListeners();
      for (final cb in _reconnectListeners) {
        cb(_socket);
      }
    });

    _socket.onReconnect((_) {
      log('[SOCKET] Reconnected');
      _retryCount = 0;
      _emitState(SocketConnectionState.connected);

      _restoreEventListeners();
      for (final cb in _reconnectListeners) {
        cb(_socket);
      }
    });

    // 연결 끊김 시 재연결 시도
    _socket.onDisconnect((_) {
      log('[SOCKET] Disconnected');
      _emitState(SocketConnectionState.disconnected);
      _attemptReconnect();
    });

    // 오류 발생 시 재연결 시도
    _socket.onConnectError((data) {
      log('[SOCKET] ConnectError: $data');
      _emitState(SocketConnectionState.disconnected);
      _attemptReconnect();
    });

    // 오류 발생 시 재연결 시도
    _socket.onError((data) {
      log('[SOCKET] Error: $data');
      _emitState(SocketConnectionState.disconnected);
      _attemptReconnect();
    });

    _monitorConnectivity(); // 네트워크 상태 모니터링
    _emitState(SocketConnectionState.connecting);
    _socket.connect();
  }


  void _monitorConnectivity() {
    _connSub = Connectivity().onConnectivityChanged.listen((results) {
      final hasNet = results.any((r) => r != ConnectivityResult.none);
      log('[SOCKET] Network changed: $results (hasNet=$hasNet)');
      if (hasNet && !isConnected) {
        _attemptReconnect(immediate: true);
      }
    });
  }

  // 지수적 백오프 기반 재연결 시도
  void _attemptReconnect({bool immediate = false}) {
    if (_socket.connected) return;
    if (_reconnectTimer != null) return;

    _emitState(SocketConnectionState.reconnecting);

    int base =
        immediate ? 0 : m.min(m.pow(2, _retryCount).toInt(), _maxRetryDelaySec);
    // full jitter: random(0..base)
    final jitter = base == 0 ? 0 : m.Random().nextInt(base + 1);
    final delaySec = base == 0 ? 0 : jitter;

    log('[SOCKET] Reconnecting in $delaySec sec (retry=$_retryCount)');
    _reconnectTimer = Timer(Duration(seconds: delaySec), () {
      _reconnectTimer = null;
      _retryCount++;
      log('[SOCKET] Attempting reconnect...');
      _socket.connect();
    });
  }


  // 외부에서 소켓 이벤트 등록 (스트림 반환)
  Stream<dynamic> on(String event) {
    // 컨트롤러가 없으면 생성하고 socket.on 등록
    return (_eventControllers[event] ??= _createEventController(event)).stream;
  }


  StreamController<dynamic> _createEventController(String event) {
    final c = StreamController<dynamic>.broadcast(
      onListen: () {},
      onCancel: () {},
    );
    _eventControllers[event] = c;

    // 소켓 이벤트 → 컨트롤러로 브릿지
    _socket.on(event, (data) => c.add(data));
    return c;
  }

  // 외부에서 소켓 이벤트 해제 (주의: 해당 이벤트의 모든 리스너 제거)
  void off(String event) {
    _socket.off(event);
    final c = _eventControllers.remove(event);
    c?.close();
  }

  // 이벤트 전송 (연결 상태가 아니면 무시 또는 예외)
  void emit(String event, dynamic data) {
    if (!_socket.connected) {
      log('[SOCKET] emit dropped (disconnected): $event');
      return; // 필요시 throw CustomException.networkError();
    }
    _socket.emit(event, data);
  }

  // 이벤트 전송 ack 지원 (socket.io ack)
  Future<bool> emitWithAck(String event, dynamic data,
      {Duration timeout = const Duration(seconds: 10)}) async {
    if (!_socket.connected) {
      log('[SOCKET] emitWithAck failed (disconnected): $event');
      return false;
    }
    final c = Completer<bool>();
    bool completed = false;

    // socket_io_client ack: emitWithAck(event, data, ack)
    _socket.emitWithAck(event, data, ack: (res) {
      if (completed) return;
      completed = true;
      c.complete(true); // 필요시 res 검사해서 true/false 결정
    });

    // 타임아웃
    Future.delayed(timeout, () {
      if (completed) return;
      completed = true;
      c.complete(false);
    });

    return c.future;
  }

  //  재연결 시 실행할 콜백 등록
  void addReconnectListener(void Function(io.Socket socket) callback) {
    _reconnectListeners.add(callback);
  }

  // 등록된 재연결 콜백 제거
  void removeReconnectListener(void Function(io.Socket socket) callback) {
    _reconnectListeners.remove(callback);
  }

  // 소켓 연결 수동 해제
  void disconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _emitState(SocketConnectionState.disconnected);
    _socket.disconnect();
  }

  // 리소스 해제 및 정리
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _connSub?.cancel();
    _reconnectTimer?.cancel();

    for (final c in _eventControllers.values) {
      c.close();
    }
    _eventControllers.clear();

    if (!_stateCtrl.isClosed) _stateCtrl.close();

    _socket.dispose();
    _initialized = false;
  }

  // 재연결 시 기존 이벤트 리스너 재등록
  void _restoreEventListeners() {
    for (final entry in _eventControllers.entries) {
      final event = entry.key;
      final controller = entry.value;

      _socket.off(event);
      _socket.on(event, (data) {
        if (!controller.isClosed) controller.add(data);
      });
    }
  }

  // 앱이 포그라운드로 복귀 시 재연결 트리거
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      log('[SOCKET] App resumed. ensure connection...');
      if (!isConnected) _attemptReconnect(immediate: true);
    }
  }
}
