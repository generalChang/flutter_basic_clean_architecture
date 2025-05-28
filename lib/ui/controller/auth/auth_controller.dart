import 'package:flutter_best_practice/ui/controller/auth/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    return AuthState();
  }

  void signIn() {
    state = state.copyWith(isSignedIn: true);
  }

  void signOut() {
    state = state.copyWith(isSignedIn: false);
  }
}
