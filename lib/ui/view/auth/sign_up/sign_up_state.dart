import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';

import 'package:flutter_best_practice/core/status/status.dart';

part 'generated/sign_up_state.freezed.dart';

/// Sign up view의 상태를 관리하기 위한 state class
@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default(Status.none) Status signUpLoadingStatus,
    @Default(CustomException.unknownError()) CustomException signUpException,
  }) = _SignUpState;

  const SignUpState._();

  /// 회원 가입 버튼 활성화 여부
  bool get signUpButtonEnabled =>
      name.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      isEmailValid &&
      isPasswordValid &&
      isNameValid &&
      !signUpLoadingStatus.isLoading;

  /// 입력 상태 유효성 여부
  bool get isEmailValid => email.length < 20;
  bool get isPasswordValid => password.length < 10;
  bool get isNameValid => name.length < 10;
}
