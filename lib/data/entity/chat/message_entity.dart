import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/message_entity.g.dart';

@JsonSerializable()
class MessageEntity {
  final String id;
  final String roomId;
  final String user;
  final String text;
  final DateTime? createdAt;

  const MessageEntity({
    this.id = '',
    this.roomId = '',
    this.user = '',
    this.text = '',
    this.createdAt,
  });
  
  factory MessageEntity.fromJson(Map<String, dynamic> json)
  => _$MessageEntityFromJson(json);
}
