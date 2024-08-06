import 'package:flutter_best_practice/core/status/loading_status.dart';
import 'package:flutter_best_practice/domain/auth/use_case/sign_in_use_case.dart';
import 'package:flutter_best_practice/manager/app/app_manager_impl.dart';
import 'package:flutter_best_practice/ui/auth/sign_in/sign_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../../../domain/auth/model/sign_in_model.dart';
import '../../../domain/auth/params/sign_in_params.dart';
import '../../../manager/app/app_manager.dart';

final signInViewModelProvider =
    StateNotifierProvider.autoDispose<SignInViewModel, SignInState>((ref) {
  return SignInViewModel(
      signInUseCase: ref.watch(signInUseCaseProvider),
      appManager: ref.read(appManagerProvider.notifier));
});

class SignInViewModel extends StateNotifier<SignInState> {
  final UseCase<SignInModel, SignInParams> _signInUseCase;
  final AppManager _appManager;

  SignInViewModel(
      {required UseCase<SignInModel, SignInParams> signInUseCase,
      required AppManager appManager})
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
