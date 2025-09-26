import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import '../../../app/error/custom_exception.dart';
import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';
import '../../param/auth/sign_up_params.dart';

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
