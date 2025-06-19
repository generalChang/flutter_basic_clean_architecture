import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_in_request_body.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_api_service.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService _authApiService;

  const AuthRemoteDataSourceImpl({
    required AuthApiService authApiService,
  }) : _authApiService = authApiService;

  @override
  Future<SignInEntity> signIn({required SignInRequestBody body}) async {
    return await _authApiService.signIn(body: body);
  }

  @override
  Future<void> signUp({required SignUpRequestBody body}) async {
    return await _authApiService.signUp(body: body);
  }
}
