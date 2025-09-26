import 'package:flutter_best_practice/domain/param/auth/sign_in_params.dart';
import 'package:flutter_best_practice/domain/param/auth/sign_up_params.dart';
import '../../app/error/custom_exception.dart';
import '../../app/error/result.dart';
import '../model/auth/sign_in_model.dart';

abstract interface class AuthRepository {
  /// 로그인
  Future<Result<SignInModel, CustomException>> signIn(
      {required SignInParams params});

  /// 회원가입
  Future<Result<void, CustomException>> signUp({required SignUpParams params});
}
