// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sample_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleEntity _$SampleEntityFromJson(Map<String, dynamic> json) => SampleEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$SampleEntityToJson(SampleEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
