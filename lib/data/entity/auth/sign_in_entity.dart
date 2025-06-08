import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_in_entity.g.dart';

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
