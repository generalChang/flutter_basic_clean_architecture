import 'package:flutter_best_practice/app/error/custom_exception.dart';
import 'package:flutter_best_practice/domain/model/chat/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/chat_state.freezed.dart';

/// 채팅 상태를 관리하기 위한 state class
@freezed
class ChatState with _$ChatState {
  factory ChatState(
      {@Default([]) List<MessageModel> messages,
      @Default(CustomException.unknownError())
      Exception listenForNewMessageException}) = _ChatState;
}
