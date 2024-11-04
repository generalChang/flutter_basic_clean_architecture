import 'package:flutter_best_practice/core/helper/api_call/api_call.dart';
import 'package:flutter_best_practice/core/helper/result/result.dart';
import 'package:flutter_best_practice/data/auth/auth_remote_data_source.dart';
import 'package:flutter_best_practice/data/auth/auth_remote_data_source_impl.dart';
import 'package:flutter_best_practice/data/auth/body/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/helper/error_handling/custom_exception.dart';
import '../../domain/auth/params/sign_in_params.dart';
import '../../domain/auth/params/sign_up_params.dart';
import 'body/sign_in_request_body.dart';
import 'mapper/auth_mapper.dart';

/*
설명
- usecase의 요구사항에 따라 데이터를 입출력 하는 책임
- repository interface 명세는 usecase가 통제함

사용법
- 에러 핸들링을 간편히 하기 위한 Repository class를 상속받고, domain에 있는 repository interface를 구현함
- Provider를 통해 의존성 관리
 */

final authRepositoryProvider = Provider((ref) {
  return AuthRepositoryImpl(
      authRemoteDataSource: ref.watch(authRemoteDataSourceProvider));
});

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource authRemoteDataSource,
  }) : _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<Result<SignInModel, CustomException>> signIn(
      {required SignInParams params}) async {
    final result = await apiCall(task: () async {
      final SignInEntity result = await _authRemoteDataSource.signIn(
        body: SignInRequestBody(email: params.email, password: params.password),
      );
      return AuthMapper.toSignInModel(entity: result);
    });

    return result;
  }

  @override
  Future<Result<void, CustomException>> signUp(
      {required SignUpParams params}) async {
    return await apiCall(task: () async {
      final result = await _authRemoteDataSource.signUp(
          body: SignUpRequestBody(
              email: params.email,
              password: params.password,
              name: params.name));
      return result;
    });
  }
}
