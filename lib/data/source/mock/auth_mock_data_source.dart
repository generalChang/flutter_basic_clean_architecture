import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_in_request_body.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/source/remote/auth_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_mock_data_source.g.dart';

@riverpod
AuthMockDataSource authMockApi(AuthMockApiRef ref) {
  return AuthMockDataSource();
}

class AuthMockDataSource implements AuthRemoteDataSource {
  @override
  Future<SignInEntity> signIn({required SignInRequestBody body}) async {
    await Future.delayed(const Duration(seconds: 1));
    return const SignInEntity(
        accessToken: 'accessToken', refreshToken: 'refreshToken');
  }

  @override
  Future<void> signUp({required SignUpRequestBody body}) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
