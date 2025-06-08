import 'package:flutter_best_practice/data/mapper/auth_mapper.dart';
import 'package:flutter_best_practice/data/source/mock/auth_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/remote/auth_remote_data_source.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import 'package:flutter_best_practice/domain/model/auth/sign_in_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/api_call/api_call.dart';
import '../../core/error_handling/custom_exception.dart';
import '../../core/error_handling/result.dart';
import '../../domain/param/auth/sign_in_params.dart';
import '../../domain/param/auth/sign_up_params.dart';
import '../request_body/auth/sign_in_request_body.dart';

part 'generated/auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(authRemoteDataSource: ref.read(authMockApiProvider));
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _api;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource authRemoteDataSource,
  }) : _api = authRemoteDataSource;

  @override
  Future<Result<SignInModel, CustomException>> signIn(
      {required SignInParams params}) async {
    return await apiCall(task: () async {
      final SignInEntity result = await _api.signIn(
        body: SignInRequestBody(email: params.email, password: params.password),
      );
      return result.toModel();
    });
  }

  @override
  Future<Result<void, CustomException>> signUp(
      {required SignUpParams params}) async {
    return await apiCall(task: () async {
      final result = await _api.signUp(
          body: SignUpRequestBody(
              email: params.email,
              password: params.password,
              name: params.name));
      return result;
    });
  }
}
