import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helper/repository/repository_result.dart';
import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../params/sign_up_params.dart';

/*
설명
- 사용자의 행동 최소단위 하나하나를 표현한 구조
- 사용자의 이벤트는 적절한 행동으로 분류할 수 있는데, 그 적절한 행동해 해당하는 것이 usecase임


사용법
- usecase의 요구사항 명세를 의미하는 repository 추상체를 일단 만듦
  - repository 추상체는 일종의 usecase의 명령서임 (repository야!! 내가 이런 데이터를 줄태니 이런 형태의 데이터를 가지고 오렴..?)
  - 즉, repository interface는 usecase가 통제하고 있음
- UseCase interface를 구현하여 오버라이딩
- Provider를 통해 의존성 관리

 */

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
      SuccessRepositoryResult<void>() =>
        const SuccessUseCaseResult<void>(data: null),
      FailureRepositoryResult<void>() =>
        FailureUseCaseResult<void>(message: resp.messages?[0])
    };
  }
}
