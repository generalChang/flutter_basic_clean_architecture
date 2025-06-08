import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/usecase/use_case.dart';
import 'package:flutter_best_practice/domain/param/auth/sign_in_params.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_in_use_case.dart';
import 'package:flutter_best_practice/ui/controller/auth/auth_controller.dart';
import 'package:flutter_best_practice/ui/view/auth//sign_in/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/status/status.dart';
part 'generated/sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  SignInState build() {
    return SignInState();
  }

  /// 이메일 (입력 상태) 수정
  void updateEmail({required String email}) {
    state = state.copyWith(email: email);
  }

  /// 패스워드 (입력 상태) 수정
  void updatePassword({required String password}) {
    state = state.copyWith(password: password);
  }

  /// 로그인
  Future<void> signIn() async {
    final authController = ref.read(authControllerProvider.notifier);

    state = state.copyWith(signInLoadingStatus: Status.loading);

    final result = await UseCase.execute(
        useCase: ref.read(signInUseCaseProvider),
        params: SignInParams(email: state.email, password: state.password));

    result.map(onSuccess: (onSuccess) {
      authController.signIn();
      state = state.copyWith(
        signInLoadingStatus: Status.success,
      );
    }, onFailure: (onFailure) {
      state = state.copyWith(
          signInLoadingStatus: Status.error,
          signInException: onFailure.exception as CustomException);
    });
  }
}
