/*
설명
- 사용자 이벤트의 Payload를 표현한 구조
- 아래 params는 로그인 이벤트가 발생하였을때 필요한 payload가 되는 것

사용법
- UseCase의 파리미터로 사용됨
 */

class SignInParams {
  final String email;
  final String password;

  const SignInParams({
    required this.email,
    required this.password,
  });
}
