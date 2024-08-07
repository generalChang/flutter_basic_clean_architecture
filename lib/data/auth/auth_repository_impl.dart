import 'package:dio/dio.dart';
import 'package:flutter_best_practice/data/auth/auth_remote_data_source.dart';
import 'package:flutter_best_practice/data/auth/auth_remote_data_source_impl.dart';
import 'package:flutter_best_practice/data/auth/body/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:flutter_best_practice/domain/auth/model/sign_in_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/helper/repository/repository.dart';
import '../../core/helper/repository/repository_result.dart';
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

class AuthRepositoryImpl extends Repository implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource authRemoteDataSource,
  }) : _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<RepositoryResult<SignInModel>> signIn(
      {required SignInParams params}) async {
    try {
      final SignInEntity resp = await _authRemoteDataSource.signIn(
        body: SignInRequestBody(email: params.email, password: params.password),
      );
      return SuccessRepositoryResult<SignInModel>(
          data: AuthMapper.toSignInModel(entity: resp));
    } on DioException catch (e) {
      return FailureRepositoryResult<SignInModel>(
        error: e,
        messages: getErrorMessages(e),
      );
    }
  }

  @override
  Future<RepositoryResult<void>> signUp({required SignUpParams params}) async {
    try {
      await _authRemoteDataSource.signUp(
          body: SignUpRequestBody(
              email: params.email,
              password: params.password,
              name: params.name));

      return const SuccessRepositoryResult<void>(data: null);
    } on DioException catch (e) {
      return FailureRepositoryResult<void>(
          error: e, messages: getErrorMessages(e));
    }
  }
}
