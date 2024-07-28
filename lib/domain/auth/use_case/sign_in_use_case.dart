import 'package:flutter_best_practice/data/auth/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/repository/repository_result.dart';
import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../params/sign_in_params.dart';

final signInUseCaseProvider = Provider((ref){
  return SignInUseCase(authRepository: ref.watch(authRepositoryProvider));
});

class SignInUseCase implements UseCase<SignInModel, SignInParams> {
  final AuthRepository _authRepository;

  const SignInUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<UseCaseResult<SignInModel>> call(
      {required SignInParams params}) async {
    final result = await _authRepository.signIn(params: params);

    return switch (result) {
      SuccessRepositoryResult<SignInModel>() =>
        SuccessUseCaseResult<SignInModel>(data: result.data),
      FailureRepositoryResult<SignInModel>() =>
        FailureUseCaseResult<SignInModel>(message: result.messages?[0])
    };
  }
}
