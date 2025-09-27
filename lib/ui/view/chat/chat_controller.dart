import 'dart:async';

import 'package:flutter_best_practice/app/foundation/usecase/no_params.dart';
import 'package:flutter_best_practice/app/foundation/usecase/stream_use_case.dart';
import 'package:flutter_best_practice/domain/model/chat/message_model.dart';
import 'package:flutter_best_practice/domain/usecase/chat/listen_for_new_message_use_case.dart';
import 'package:flutter_best_practice/ui/view/chat/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/result.dart';

part 'generated/chat_controller.g.dart';

@riverpod
class ChatController extends _$ChatController {
  bool _initialized = false;

  @override
  ChatState build() {
    // 초기 상태는 즉시 반환
    final initial = ChatState();

    // 초기화는 한 번만
    if (!_initialized) {
      _initialized = true;

      _subscription = StreamUseCase.execute<MessageModel, NoParams>(
        useCase: ref.read(listenForNewMessageUseCaseProvider),
        params: NoParams(),
      ).listen((data) {
        data.map(
          onSuccess: (success) {
            state = state.copyWith(
              messages: [...state.messages, success.data],
            );
          },
          onFailure: (failure) {
            state = state.copyWith(
              listenForNewMessageException: failure.exception,
            );
          },
        );
      });

      ref.onDispose(() async {
        await _subscription?.cancel();
        _subscription = null;
      });
    }

    return initial;
  }

  StreamSubscription<Result<MessageModel, Exception>>? _subscription;
}
