import 'package:flutter_best_practice/core/status/loading_status.dart';

class SignUpState {
  final String? name;
  final String? email;
  final String? password;

  final LoadingStatus signUpLoadingStatus;
  final String? signUpErrorMessage;

  bool get isSignUpLoading => signUpLoadingStatus == LoadingStatus.loading;
  bool get isSignUpError => signUpLoadingStatus == LoadingStatus.error;

  bool get signUpButtonEnabled =>
      name != null && email != null && password != null && !isSignUpLoading;

  bool get isNameValid => name == null || (name != null && name!.isNotEmpty);
  bool get isEmailValid =>
      email == null || (email != null && email!.isNotEmpty);
  bool get isPasswordValid =>
      password == null || (password != null && password!.isNotEmpty);

  final String nameErrorMessage = '이름을 다시 입력해주세요';
  final String emailErrorMessage = '이메일을 다시 입력해주세요';
  final String passwordErrorMessage = '비밀번호를 다시 입력해주세요';

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
