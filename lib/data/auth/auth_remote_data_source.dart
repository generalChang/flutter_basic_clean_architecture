

import 'package:flutter_best_practice/data/auth/body/sign_up_request_body.dart';

import 'body/sign_in_request_body.dart';
import 'entity/sign_in_entity.dart';

abstract interface class AuthRemoteDataSource{
  Future<SignInEntity> signIn({required SignInRequestBody body});

  Future<void> signUp({required SignUpRequestBody body});
}