/*
설명
- 애플리케이션의 데이터를 모델링한 구조
- Response와 1대1대응되는 Entity를 가공한 것으로, 보다 더 UI 친화적임

사용법
- Repository와 UseCase의 반환값으로 사용됨
 */

class SignInModel {
  final String accessToken;
  final String refreshToken;

  const SignInModel({
    required this.accessToken,
    required this.refreshToken,
  });
}
