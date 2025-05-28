import 'package:flutter_best_practice/data/repository_impl/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/error_handling/custom_exception.dart';
import '../../../core/error_handling/result.dart';
import '../../../core/usecase/use_case.dart';
import '../../param/auth/sign_up_params.dart';

part 'generated/sign_up_use_case.g.dart';

@Riverpod(keepAlive: true)
SignUpUseCase signUpUseCase(SignUpUseCaseRef ref) {
  return SignUpUseCase(authRepository: ref.read(authRepositoryProvider));
}

class SignUpUseCase implements UseCase<void, SignUpParams> {
  final AuthRepository _authRepository;

  const SignUpUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Result<void, CustomException>> call(
      {required SignUpParams params}) async {
    return await _authRepository.signUp(params: params);
  }
}
