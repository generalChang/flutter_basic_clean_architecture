import 'package:flutter_best_practice/core/status/loading_status.dart';
import 'package:flutter_best_practice/domain/auth/use_case/sign_up_use_case.dart';
import 'package:flutter_best_practice/ui/auth/sign_up/sign_up_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../../../domain/auth/params/sign_up_params.dart';

final signUpViewModelProvider = StateNotifierProvider((ref) {
  return SignUpViewModel(signUpUseCase: ref.watch(signUpUseCaseProvider));
});

class SignUpViewModel extends StateNotifier<SignUpState> {
  final UseCase<void, SignUpParams> _signUpUseCase;
  SignUpViewModel({required UseCase<void, SignUpParams> signUpUseCase})
      : _signUpUseCase = signUpUseCase,
        super(SignUpState.init());

  void updateEmail({required String email}) {
    state = state.copyWith(email: email);
  }

  void updatePassword({required String password}) {
    state = state.copyWith(password: password);
  }

  void updateName({required String name}) {
    state = state.copyWith(name: name);
  }

  Future<void> signUp() async {
    state = state.copyWith(signUpLoadingStatus: LoadingStatus.loading);

    final resp = await _signUpUseCase(
        params: SignUpParams(
            email: state.email!, password: state.password!, name: state.name!));

    switch (resp) {
      case SuccessUseCaseResult<void>():
        state = state.copyWith(signUpLoadingStatus: LoadingStatus.success);
      case FailureUseCaseResult<void>():
        state = state.copyWith(
            signUpLoadingStatus: LoadingStatus.error,
            signUpErrorMessage: resp.message);
    }
  }
}
