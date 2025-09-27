import 'package:flutter_best_practice/data/entity/chat/message_entity.dart';

import '../../../request_body/chat/send_message_request_body.dart';

abstract interface class ChatSocketDataSource {
  /// 새 메세지 수신
  Stream<MessageEntity> listenForNewMessage();

  /// 새 메세지 수신 이벤트 구독 해제
  void unlistenForNewMessage();

  /// 새 메세지 송신
  void sendMessage({required SendMessageRequestBody body});
}
