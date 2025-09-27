import 'package:flutter_best_practice/app/error/result.dart';
import 'package:flutter_best_practice/app/foundation/usecase/no_params.dart';
import 'package:flutter_best_practice/app/foundation/usecase/stream_use_case.dart';
import 'package:flutter_best_practice/data/repository_impl/chat_repository_impl.dart';
import 'package:flutter_best_practice/domain/model/chat/message_model.dart';
import 'package:flutter_best_practice/domain/repository/chat_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/listen_for_new_message_use_case.g.dart';

@Riverpod(keepAlive: true)
ListenForNewMessageUseCase listenForNewMessageUseCase(Ref ref) {
  return ListenForNewMessageUseCase(
      repository: ref.read(chatRepositoryProvider));
}

class ListenForNewMessageUseCase
    implements StreamUseCase<MessageModel, NoParams> {
  final ChatRepository _repository;

  const ListenForNewMessageUseCase({
    required ChatRepository repository,
  }) : _repository = repository;

  @override
  Stream<Result<MessageModel, Exception>> call(
      {required NoParams params}) async* {
    yield* _repository.listenForNewMessage(params: params);
  }
}
