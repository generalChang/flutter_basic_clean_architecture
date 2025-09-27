import 'package:flutter_best_practice/app/foundation/usecase/sync_use_case.dart';
import 'package:flutter_best_practice/data/repository_impl/chat_repository_impl.dart';
import 'package:flutter_best_practice/domain/param/chat/send_message_params.dart';
import 'package:flutter_best_practice/domain/repository/chat_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/send_message_use_case.g.dart';

@Riverpod(
  keepAlive: true
)
SendMessageUseCase sendMessageUseCase(Ref ref){
  return SendMessageUseCase(repository: ref.read(chatRepositoryProvider));
}

class SendMessageUseCase implements SyncUseCase<void, SendMessageParams> {
  final ChatRepository _repository;

  const SendMessageUseCase({
    required ChatRepository repository,
  }) : _repository = repository;

  @override
  void call({required SendMessageParams params}) {
    _repository.sendMessage(params: params);
  }
}
