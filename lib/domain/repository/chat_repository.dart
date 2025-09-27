import '../../app/error/custom_exception.dart';
import '../../app/error/result.dart';
import '../../app/foundation/usecase/no_params.dart';
import '../model/chat/message_model.dart';
import '../param/chat/send_message_params.dart';

abstract interface class ChatRepository {
  /// 새 메세지 수신
  Stream<Result<MessageModel, Exception>> listenForNewMessage(
      {required NoParams params});

  /// 새 메세지 수신 이벤트 구독 해제
  void unlistenForNewMessage();

  /// 새 메세지 송신
  void sendMessage({required SendMessageParams params});
}
