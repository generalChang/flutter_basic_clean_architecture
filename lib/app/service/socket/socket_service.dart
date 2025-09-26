import 'dart:async';
import 'dart:math' as m;
import 'package:flutter/widgets.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'dart:developer';

@Riverpod(
  keepAlive: true
)
SocketService socketService(Ref ref){
  return SocketService('websocket server url');
}

class SocketService with WidgetsBindingObserver {
  late io.Socket _socket;
  final String serverUrl;
  final int _maxRetryDelay = 60;
  int _retryCount = 0;
  Timer? _reconnectTimer;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  // 재연결 시 실행할 외부 콜백 리스트
  final List<void Function(io.Socket socket)> _reconnectListeners = [];

  // 이벤트별 스트림 컨트롤러 저장 (브로드캐스트로 여러 구독 가능)
  final Map<String, StreamController<dynamic>> _eventControllers = {};

  SocketService(this.serverUrl);

  void init() {
    WidgetsBinding.instance.addObserver(this);

    // 소켓 초기화 (자동 연결 및 재연결 비활성화)
    _socket = io.io(
      serverUrl,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .disableReconnection()
          .build(),
    );

    // 최초 연결 또는 재연결 시 호출됨
    _socket.onConnect((_) {
      log('[SOCKET] Connected');
      _retryCount = 0;

      // 이벤트 리스너 재등록
      _restoreEventListeners();

      // 외부 재연결 콜백 호출
      for (var callback in _reconnectListeners) {
        callback(_socket);
      }
    });

    // 재연결 시 호출됨
    _socket.onReconnect((_) {
      log('[SOCKET] Reconnected');
      _retryCount = 0;

      _restoreEventListeners();

      for (var callback in _reconnectListeners) {
        callback(_socket);
      }
    });

    // 연결 끊김 시 재연결 시도
    _socket.onDisconnect((_) {
      log('[SOCKET] Disconnected');
      _attemptReconnect();
    });

    // 오류 발생 시 재연결 시도
    _socket.onError((data) {
      log('[SOCKET] Error: $data');
      _attemptReconnect();
    });

    // 네트워크 상태 모니터링
    _monitorConnectivity();

    // 연결 시도 시작
    _socket.connect();
  }

  // 네트워크 연결 상태 변화 감지 및 재연결 시도
  void _monitorConnectivity() {
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      final hasConnection = results.any((r) => r != ConnectivityResult.none);
      if (hasConnection) {
        log('[SOCKET] Network changed: $results');
        _attemptReconnect();
      }
    });
  }

  // 지수적 백오프 기반 재연결 시도
  void _attemptReconnect() {
    if (_socket.connected || _reconnectTimer != null) return;

    final delaySeconds = m.min(m.pow(2, _retryCount).toInt(), _maxRetryDelay);
    log('[SOCKET] Reconnecting in $delaySeconds seconds...');

    _reconnectTimer = Timer(Duration(seconds: delaySeconds), () {
      _reconnectTimer = null;
      _retryCount++;
      log('[SOCKET] Attempting to reconnect...');
      _socket.connect();
    });
  }

  // 외부에서 소켓 이벤트 구독 (스트림 반환)
  Stream<dynamic> on(String event) {
    if (!_eventControllers.containsKey(event)) {
      final controller = StreamController<dynamic>.broadcast();
      _eventControllers[event] = controller;

      // 소켓에서 이벤트 수신 시 스트림으로 전달
      _socket.on(event, (data) => controller.add(data));
    }
    return _eventControllers[event]!.stream;
  }

  // 외부에서 이벤트 전송
  void emit(String event, dynamic data) {
    if (_socket.connected) {
      _socket.emit(event, data);
    }
  }

  // 외부에서 재연결 시 실행할 콜백 등록
  void addReconnectListener(void Function(io.Socket socket) callback) {
    _reconnectListeners.add(callback);
  }

  // 등록된 재연결 콜백 제거
  void removeReconnectListener(void Function(io.Socket socket) callback) {
    _reconnectListeners.remove(callback);
  }

  // 소켓 연결 수동 해제
  void disconnect() {
    _socket.disconnect();
    _reconnectTimer?.cancel();
  }

  // 리소스 해제 및 정리
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _connectivitySubscription?.cancel();
    _reconnectTimer?.cancel();

    for (var c in _eventControllers.values) {
      c.close();
    }
    _eventControllers.clear();

    _socket.dispose();
  }

  // 재연결 시 기존 이벤트 리스너 안전하게 재등록
  void _restoreEventListeners() {
    for (var entry in _eventControllers.entries) {
      final event = entry.key;
      final controller = entry.value;

      _socket.off(event); // 기존 리스너 제거
      _socket.on(event, (data) => controller.add(data)); // 재등록
    }
  }

  // 앱이 다시 포그라운드로 올라왔을 때 재연결 시도
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      log('[SOCKET] App resumed. Checking connection...');
      _attemptReconnect();
    }
  }
}
