// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    MessageEntity(
      id: json['id'] as String? ?? '',
      roomId: json['roomId'] as String? ?? '',
      user: json['user'] as String? ?? '',
      text: json['text'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$MessageEntityToJson(MessageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'user': instance.user,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
