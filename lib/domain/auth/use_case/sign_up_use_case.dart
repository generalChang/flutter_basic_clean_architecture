import 'package:flutter_best_practice/data/auth/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helper/repository/repository_result.dart';
import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../params/sign_up_params.dart';

final signUpUseCaseProvider = Provider((ref) {
  return SignUpUseCase(authRepository: ref.watch(authRepositoryProvider));
});

class SignUpUseCase implements UseCase<void, SignUpParams> {
  final AuthRepository _authRepository;

  const SignUpUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<UseCaseResult<void>> call({required SignUpParams params}) async {
    final resp = await _authRepository.signUp(params: params);

    return switch (resp) {
      SuccessRepositoryResult<void>() => SuccessUseCaseResult<void>(data: null),
      FailureRepositoryResult<void>() =>
        FailureUseCaseResult<void>(message: resp.messages?[0])
    };
  }
}
