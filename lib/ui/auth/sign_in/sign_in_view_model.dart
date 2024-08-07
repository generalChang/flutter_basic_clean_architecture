import 'package:flutter_best_practice/core/status/loading_status.dart';
import 'package:flutter_best_practice/domain/auth/use_case/sign_in_use_case.dart';
import 'package:flutter_best_practice/manager/app/app_manager_impl.dart';
import 'package:flutter_best_practice/manager/app/interface/app_sign_in_able.dart';
import 'package:flutter_best_practice/ui/auth/sign_in/sign_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../../../domain/auth/model/sign_in_model.dart';
import '../../../domain/auth/params/sign_in_params.dart';

/*
설명
- MVVM 패턴에서 ViewModel에 해당하는 부분
- 따라서 이벤트 처리 및 State management 책임을 가짐
- 하나의 뷰와 동일한 생명주기를 가지도록 설정


사용법
- Riverpod의 StateNotifier를 extends 해야함
   - view에서 viewmodel을 쉽게 구독하고 모니터링 할 수 있도록 하기 위함
- StateNotifierProvider를 통해 의존성 관리
   - 일반적으로 autoDispose modifier를 사용하여 뷰와 완전히 동일한 생명주기를 갖도록 설정하는 것을 권장
 */

final signInViewModelProvider =
    StateNotifierProvider.autoDispose<SignInViewModel, SignInState>((ref) {
  return SignInViewModel(
      signInUseCase: ref.watch(signInUseCaseProvider),
      appManager: ref.read(appManagerProvider.notifier));
});

class SignInViewModel extends StateNotifier<SignInState> {
  final UseCase<SignInModel, SignInParams> _signInUseCase;
  final AppSignInAble _appManager;

  SignInViewModel(
      {required UseCase<SignInModel, SignInParams> signInUseCase,
      required AppSignInAble appManager})
      : _appManager = appManager,
        _signInUseCase = signInUseCase,
        super(SignInState.init());

  void updateEmail({required String email}) {
    state = state.copyWith(email: email);
  }

  void updatePassword({required String password}) {
    state = state.copyWith(password: password);
  }

  Future<void> signIn() async {
    state = state.copyWith(signInLoadingStatus: LoadingStatus.loading);

    // final resp = await _signInUseCase(
    //     params: SignInParams(email: state.email!, password: state.password!));

    // 네트워크 레이턴시를 2초라 가정
    await Future.delayed(const Duration(seconds: 2));

    // 성공하여서 다음과 같은 반환값을 받았다고 가정
    const resp = SuccessUseCaseResult<SignInModel>(
        data: SignInModel(
            accessToken: 'accessToken', refreshToken: 'refreshToken'));

    switch (resp) {
      case SuccessUseCaseResult<SignInModel>():
        await _appManager.signIn(isSignIn: true);
        state = state.copyWith(signInLoadingStatus: LoadingStatus.success);
      case FailureUseCaseResult<SignInModel>():
        state = state.copyWith(
          signInLoadingStatus: LoadingStatus.error,
        );
    }
  }
}
