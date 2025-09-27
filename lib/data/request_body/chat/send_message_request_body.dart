import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/send_message_request_body.g.dart';

@JsonSerializable()
class SendMessageRequestBody{
  final String roomId;
  final String text;
  final String user;

  const SendMessageRequestBody({
    this.roomId = '',
    this.text = '',
    this.user = '',
  });

  Map<String,dynamic> toJson() => _$SendMessageRequestBodyToJson(this);
}