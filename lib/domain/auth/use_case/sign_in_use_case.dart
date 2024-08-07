import 'package:flutter_best_practice/data/auth/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/helper/repository/repository_result.dart';
import '../../../core/helper/usecase/use_case.dart';
import '../../../core/helper/usecase/use_case_result.dart';
import '../params/sign_in_params.dart';

/*
설명
- 사용자의 행동 최소단위 하나하나를 표현한 구조
- 사용자의 이벤트는 적절한 행동으로 분류할 수 있는데, 그 적절한 행동해 해당하는 것이 usecase임


사용법
- usecase의 요구사항 명세를 의미하는 repository 추상체를 일단 만듦
  - usecase 입장에서 'payload를 넘겨줄태니 이런 데이터를 나한테 넘겨라' 라는 요구사항을 담은 명세가 repository interface임
  - 즉, repository interface는 usecase가 통제하고 있음
- UseCase interface를 구현하여 오버라이딩
- Provider를 통해 의존성 관리

 */

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
