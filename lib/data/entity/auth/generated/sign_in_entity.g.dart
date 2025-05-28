// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sign_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInEntity _$SignInEntityFromJson(Map<String, dynamic> json) => SignInEntity(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$SignInEntityToJson(SignInEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
