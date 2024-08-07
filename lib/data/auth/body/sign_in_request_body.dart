import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_in_request_body.g.dart';

/*
설명
- http body를 표현한 객체
- 여기선 로그인 API를 호출할때 사용되는 http body를 표현한 객체가 됨

사용법
- Remote Data Source에 http body로 지정
 */
@JsonSerializable()
class SignInRequestBody {
  final String email;
  final String password;

  const SignInRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignInRequestBodyToJson(this);
}
