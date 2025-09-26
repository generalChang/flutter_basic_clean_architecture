import 'package:flutter_best_practice/data/repository_impl/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import 'package:flutter_best_practice/domain/model/auth/sign_in_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/custom_exception.dart';
import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';
import '../../param/auth/sign_in_params.dart';

part 'generated/sign_in_use_case.g.dart';

@Riverpod(
  keepAlive: true
)
SignInUseCase signInUseCase(Ref ref){
  return SignInUseCase(authRepository: ref.read(authRepositoryProvider));
}

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
