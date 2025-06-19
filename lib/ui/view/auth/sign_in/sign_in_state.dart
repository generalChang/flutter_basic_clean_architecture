import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/status/status.dart';
part 'generated/sign_in_state.freezed.dart';


/// Sign In View의 상태를 관리하기 위한 state class
@freezed
class SignInState with _$SignInState {
  factory SignInState({
    @Default('') String email,
    @Default('') String password,
    @Default(Status.none) Status signInLoadingStatus,
    @Default(CustomException.unknownError()) CustomException signInException,
  }) = _SignInState;
}
