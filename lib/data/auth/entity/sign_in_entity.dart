import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_in_entity.g.dart';

/*
설명
- 로그인 API 호출 시 Response와 1대1 대응되는 객체
- 속성의 값을 무단으로 변경할 수 없음

사용법
- DataSource의 반환타입으로 지정
 */

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
