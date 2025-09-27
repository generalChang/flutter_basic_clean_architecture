import 'dart:async';
import 'package:flutter_best_practice/app/error/result.dart';
import 'package:flutter_best_practice/app/util/api_call.dart';
import 'package:flutter_best_practice/data/entity/chat/message_entity.dart';
import 'package:flutter_best_practice/data/mapper/chat_mapper.dart';
import 'package:flutter_best_practice/data/request_body/chat/send_message_request_body.dart';
import 'package:flutter_best_practice/data/source/socket/chat/chat_socket_data_source.dart';
import 'package:flutter_best_practice/data/source/socket/chat/chat_socket_data_source_impl.dart';
import 'package:flutter_best_practice/domain/model/chat/message_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../app/foundation/usecase/no_params.dart';
import '../../domain/param/chat/send_message_params.dart';
import '../../domain/repository/chat_repository.dart';

part 'generated/chat_repository_impl.g.dart';

@Riverpod(keepAlive: true)
ChatRepository chatRepository(Ref ref) {
  return ChatRepositoryImpl(
      socketDataSource: ref.read(chatSocketDataSourceProvider));
}

class ChatRepositoryImpl implements ChatRepository {
  final ChatSocketDataSource _socketDataSource;

  const ChatRepositoryImpl({
    required ChatSocketDataSource socketDataSource,
  }) : _socketDataSource = socketDataSource;

  /// 새 메세지 수신
  @override
  Stream<Result<MessageModel, Exception>> listenForNewMessage(
      {required NoParams params}) {
    return ActionCallGuard.runStream(
        source: _socketDataSource.listenForNewMessage(),
        toModel: (MessageEntity e) => e.toModel(),
        onFinally: () {
          // 구독이 취소되거나 스트림이 끝나면 자동으로 소켓 리스너 정리
          _socketDataSource.unlistenForNewMessage();
        });
  }

  /// 새 메세지 송신
  @override
  void sendMessage({required SendMessageParams params}) {
    return ActionCallGuard.runOrRethrow(() {
      _socketDataSource.sendMessage(
        body: SendMessageRequestBody(
          roomId: params.roomId,
          text: params.text,
          user: params.user,
        ),
      );
    });
  }

  /// 새 메세지 수신 이벤트 구독 해제
  @override
  void unlistenForNewMessage() {
    _socketDataSource.unlistenForNewMessage();
  }
}
