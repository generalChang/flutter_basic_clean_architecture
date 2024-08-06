abstract interface class AppManager {
  Future<void> init();

  Future<void> signIn({required bool isSignIn});
}
