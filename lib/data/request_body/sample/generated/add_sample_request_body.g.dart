// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../add_sample_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSampleRequestBody _$AddSampleRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddSampleRequestBody(
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$AddSampleRequestBodyToJson(
        AddSampleRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
