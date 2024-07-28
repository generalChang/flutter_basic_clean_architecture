import 'package:flutter_best_practice/core/status/loading_status.dart';

class SignUpState {
  final String? name;
  final String? email;
  final String? password;

  final LoadingStatus signUpLoadingStatus;
  final String? signUpErrorMessage;

  const SignUpState({
    this.name,
    this.email,
    this.password,
    required this.signUpLoadingStatus,
    this.signUpErrorMessage,
  });

  SignUpState.init()
      : name = null,
        email = null,
        password = null,
        signUpLoadingStatus = LoadingStatus.none,
        signUpErrorMessage = null;

  SignUpState copyWith({
    String? name,
    String? email,
    String? password,
    LoadingStatus? signUpLoadingStatus,
    String? signUpErrorMessage,
  }) {
    return SignUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      signUpLoadingStatus: signUpLoadingStatus ?? this.signUpLoadingStatus,
      signUpErrorMessage: signUpErrorMessage ?? this.signUpErrorMessage,
    );
  }
}
