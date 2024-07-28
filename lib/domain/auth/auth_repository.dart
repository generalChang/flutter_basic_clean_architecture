import 'package:flutter_best_practice/domain/auth/params/sign_in_params.dart';
import 'package:flutter_best_practice/domain/auth/params/sign_up_params.dart';

import '../../core/helper/repository/repository_result.dart';
import 'model/sign_in_model.dart';

abstract interface class AuthRepository {
  Future<RepositoryResult<SignInModel>> signIn({required SignInParams params});

  Future<RepositoryResult<void>> signUp({required SignUpParams params});
}
