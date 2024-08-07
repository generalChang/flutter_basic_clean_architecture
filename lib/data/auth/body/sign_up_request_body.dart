import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_up_request_body.g.dart';

/*
설명
- http body를 표현한 객체
- 여기선 회원가입 API를 호출할때 사용되는 http body를 표현한 객체가 됨

사용법
- Remote Data Source에 http body로 지정
 */


@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String password;
  final String name;

  const SignUpRequestBody({
    required this.email,
    required this.password,
    required this.name,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
