import 'package:dio/dio.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_in_request_body.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:flutter_best_practice/core/network/http_client.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_api_service.g.dart';


@Riverpod(keepAlive: true)
AuthApiService authApi(AuthApiRef ref) {
  return AuthApiService(ref.read(httpClientProvider));
}

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  /// 로그인
  @POST('/auth/signIn')
  Future<SignInEntity> signIn({@Body() required SignInRequestBody body});

  /// 회원가입
  @POST('/auth/signUp')
  Future<void> signUp({@Body() required SignUpRequestBody body});
}
