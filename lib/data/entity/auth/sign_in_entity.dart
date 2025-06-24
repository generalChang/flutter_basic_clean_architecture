import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_in_entity.g.dart';

/// Sign in api response data model

@JsonSerializable()
class SignInEntity {
  final String accessToken;
  final String refreshToken;

  const SignInEntity({
    required this.accessToken,
    required this.refreshToken,
  });

  factory SignInEntity.fromJson(Map<String, dynamic> json) =>
      _$SignInEntityFromJson(json);
}
