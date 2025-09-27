// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../send_message_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequestBody _$SendMessageRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendMessageRequestBody(
      roomId: json['roomId'] as String? ?? '',
      text: json['text'] as String? ?? '',
      user: json['user'] as String? ?? '',
    );

Map<String, dynamic> _$SendMessageRequestBodyToJson(
        SendMessageRequestBody instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'text': instance.text,
      'user': instance.user,
    };
