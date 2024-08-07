import 'package:flutter_best_practice/core/status/loading_status.dart';

/*
설명
- 프론트엔드 진영에서 언급되는 '상태'와 동일한 의미를 가짐
- 단, 저희는 상태의 생명주기를 하나의 페이지의 생명주기와 동기화 시켜줄 예정


사용법
- 한 화면의 생명주기 동안 필요하게 될 데이터 구조를 구상
- 여기선 표현이 안되어 있는부분이지만, 값 비교를 위해 Equatable을 상속하였으면 좋겠음
 */

class SignUpState {
  final String? name;
  final String? email;
  final String? password;

  final LoadingStatus signUpLoadingStatus;
  final String? signUpErrorMessage;

  bool get isSignUpLoading => signUpLoadingStatus == LoadingStatus.loading;
  bool get isSignUpError => signUpLoadingStatus == LoadingStatus.error;

  bool get signUpButtonEnabled =>
      name != null &&
      name!.isNotEmpty &&
      email != null &&
      email!.isNotEmpty &&
      password != null &&
      password!.isNotEmpty &&
      !isSignUpLoading;

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
