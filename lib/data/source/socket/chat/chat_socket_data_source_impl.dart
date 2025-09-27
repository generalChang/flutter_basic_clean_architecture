import 'dart:async';

import 'package:flutter_best_practice/app/service/socket/socket_service.dart';
import 'package:flutter_best_practice/data/entity/chat/message_entity.dart';
import 'package:flutter_best_practice/data/request_body/chat/send_message_request_body.dart';
import 'package:flutter_best_practice/data/source/socket/chat/chat_socket_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/chat_socket_data_source_impl.g.dart';

@Riverpod(keepAlive: true)
ChatSocketDataSource chatSocketDataSource(Ref ref) {
  return ChatSocketDataSourceImpl(
      socketService: ref.read(socketServiceProvider));
}

class ChatSocketDataSourceImpl implements ChatSocketDataSource {
  final _listenNewMessage = 'new-message'; // 메시지 수신 소켓 이빈트
  final _sendMessage = 'send-message'; // 메세지 송신 소켓 이벤트

  final SocketService _socketService;

  const ChatSocketDataSourceImpl({
    required SocketService socketService,
  }) : _socketService = socketService;

  @override
  Stream<MessageEntity> listenForNewMessage() {
    return _socketService.on(_listenNewMessage).transform<MessageEntity>(
      StreamTransformer<dynamic, MessageEntity>.fromHandlers(
        handleData: (raw, sink) {
          try {
            sink.add(MessageEntity.fromJson(raw));
          } catch (e, st) {
            // 포맷 불일치/디코딩 문제는 명확히 구분
            sink.addError(FormatException('Invalid message payload: $e'), st);
          }
        },
        handleError: (error, stack, sink) {
          // 소켓/전송 레벨 에러는 그대로 위로
          sink.addError(error, stack);
        },
      ),
    );
  }

  @override
  void sendMessage({required SendMessageRequestBody body}) {
    // 가능하면 예외 매핑 or ack 지원(emitWithAck)이 있으면 Future로 전환 권장
    try {
      _socketService.emit(_sendMessage, body.toJson());
    } catch (e) {
      // 여기서 삼키지 말고 상위에서 처리하도록 던지기
      rethrow;
    }
  }

  @override
  void unlistenForNewMessage() {
    _socketService.off(_listenNewMessage);
  }
}
