import 'package:flutter_best_practice/core/status/loading_status.dart';

class SignInState {
  final String? email;
  final String? password;
  final LoadingStatus signInLoadingStatus;
  final String? signInErrorMessage;

  const SignInState({
    this.email,
    this.password,
    required this.signInLoadingStatus,
    this.signInErrorMessage,
  });

  SignInState.init()
      : email = null,
        password = null,
        signInLoadingStatus = LoadingStatus.none,
        signInErrorMessage = null;

  SignInState copyWith({
    String? email,
    String? password,
    LoadingStatus? signInLoadingStatus,
    String? signInErrorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      signInLoadingStatus: signInLoadingStatus ?? this.signInLoadingStatus,
      signInErrorMessage: signInErrorMessage ?? this.signInErrorMessage,
    );
  }
}
