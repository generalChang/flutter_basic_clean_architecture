import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/usecase/use_case.dart';
import 'package:flutter_best_practice/domain/param/auth/sign_up_params.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_up_use_case.dart';
import 'package:flutter_best_practice/ui/view/auth/sign_up/sign_up_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/status/status.dart';
part 'generated/sign_up_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  SignUpState build() {
    return SignUpState();
  }

  /// 이메일 (입력 상태) 수정
  void updateEmail({required String email}) {
    state = state.copyWith(email: email);
  }

  /// 비밀번호 (입력 상태) 수정
  void updatePassword({required String password}) {
    state = state.copyWith(password: password);
  }

  /// 이름 (입력 상태) 수정
  void updateName({required String name}) {
    state = state.copyWith(name: name);
  }

  /// 회원가입
  Future<void> signUp() async {
    state = state.copyWith(signUpLoadingStatus: Status.loading);

    final result = await UseCase.execute(
        useCase: ref.read(signUpUseCaseProvider),
        params: SignUpParams(
            email: state.email, password: state.password, name: state.name));

    result.map(onSuccess: (onSuccess) {
      state = state.copyWith(
        signUpLoadingStatus: Status.success,
      );
    }, onFailure: (onFailure) {
      state = state.copyWith(
          signUpLoadingStatus: Status.error,
          signUpException: onFailure.exception as CustomException);
    });
  }
}
