import 'package:dio/dio.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_in_request_body.dart';
import 'package:flutter_best_practice/data/request_body/auth/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/entity/auth/sign_in_entity.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/auth_remote_data_source.g.dart';

@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  /// 로그인
  @POST('/auth/signIn')
  Future<SignInEntity> signIn({@Body() required SignInRequestBody body});

  /// 회원가입
  @POST('/auth/signUp')
  Future<void> signUp({@Body() required SignUpRequestBody body});
}
