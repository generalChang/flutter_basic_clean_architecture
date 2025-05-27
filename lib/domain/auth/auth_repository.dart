import 'package:flutter_best_practice/domain/auth/params/sign_in_params.dart';
import 'package:flutter_best_practice/domain/auth/params/sign_up_params.dart';

import '../../core/helper/error_handling/custom_exception.dart';
import '../../core/helper/result/result.dart';
import 'model/sign_in_model.dart';

/*
설명
- usecase의 요구사항을 반영한 명세
- 일종의 usecase의 명령서임 (repository야 내가 이런 데이터를 줄태니 이런 형태의 데이터를 가지고 오렴..?)
- 해당 레이어에서 이 명세를 만들고, data layer의 repository impl에서 이 명서에 맞춰서 구현해야함

사용법
- usecase 요구사항에 맞춰 메서드를 정의하여 사용
 */

abstract interface class AuthRepository {
  Future<Result<SignInModel, CustomException>> signIn({required SignInParams params});

  Future<Result<void, CustomException>> signUp({required SignUpParams params});
}
