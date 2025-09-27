import 'package:flutter_best_practice/data/entity/chat/message_entity.dart';
import 'package:flutter_best_practice/domain/model/chat/message_model.dart';

/// Chat Data model (data layer) mapper

extension MessageEntityExt on MessageEntity {
  MessageModel toModel() => MessageModel(
      id: id, roomId: roomId, user: user, text: text, createdAt: createdAt);
}
