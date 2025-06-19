import 'package:flutter_best_practice/data/mapper/auth_mapper.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_remote_data_source.dart';
import 'package:flutter_best_practice/domain/repository/auth_repository.dart';
import 'package:flutter_best_practice/domain/model/auth/sign_in_model.dart';

import '../../core/api_call/api_call.dart';
import '../../core/error_handling/custom_exception.dart';
import '../../core/error_handling/result.dart';
import '../../domain/param/auth/sign_in_params.dart';
import '../../domain/param/auth/sign_up_params.dart';
import '../request_body/auth/sign_in_request_body.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  /// 로그인
  @override
  Future<Result<SignInModel, CustomException>> signIn(
      {required SignInParams params}) async {
    return await apiCall(task: () async {
      final SignInEntity result = await _remoteDataSource.signIn(
        body: SignInRequestBody(email: params.email, password: params.password),
      );
      return result.toModel();
    });
  }

  /// 회원가입
  @override
  Future<Result<void, CustomException>> signUp(
      {required SignUpParams params}) async {
    return await apiCall(task: () async {
      final result = await _remoteDataSource.signUp(
          body: SignUpRequestBody(
              email: params.email,
              password: params.password,
              name: params.name));
      return result;
    });
  }
}
