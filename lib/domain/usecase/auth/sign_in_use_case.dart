import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import 'package:flutter_best_practice/domain/model/auth/sign_in_model.dart';

import '../../../core/error_handling/custom_exception.dart';
import '../../../core/error_handling/result.dart';
import '../../../core/usecase/use_case.dart';
import '../../param/auth/sign_in_params.dart';



class SignInUseCase implements UseCase<SignInModel, SignInParams> {
  final AuthRepository _authRepository;

  const SignInUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Result<SignInModel, CustomException>> call(
      {required SignInParams params}) async {
    return await _authRepository.signIn(params: params);
  }
}
