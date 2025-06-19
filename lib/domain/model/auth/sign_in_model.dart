
/// Sign in usecase data model
class SignInModel {
  final String accessToken;
  final String refreshToken;

  const SignInModel({
    required this.accessToken,
    required this.refreshToken,
  });
}
