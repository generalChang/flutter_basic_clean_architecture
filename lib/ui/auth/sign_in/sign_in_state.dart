import 'package:flutter_best_practice/core/status/loading_status.dart';

/*
설명
- 프론트엔드 진영에서 언급되는 '상태'와 동일한 의미를 가짐
- 단, 저희는 상태의 생명주기를 하나의 페이지의 생명주기와 동기화 시켜줄 예정


사용법
- 한 화면의 생명주기 동안 필요하게 될 데이터 구조를 구상
- 여기선 표현이 안되어 있는부분이지만, 값 비교를 위해 Equatable을 상속하였으면 좋겠음
 */
class SignInState {
  final String? email;
  final String? password;
  final LoadingStatus signInLoadingStatus;
  final String? signInErrorMessage;

  bool get isSignInLoading => signInLoadingStatus == LoadingStatus.loading;
  bool get isSignInError => signInLoadingStatus == LoadingStatus.error;

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
