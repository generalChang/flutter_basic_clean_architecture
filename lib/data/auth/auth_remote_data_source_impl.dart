import 'package:dio/dio.dart';
import 'package:flutter_best_practice/data/auth/body/sign_in_request_body.dart';
import 'package:flutter_best_practice/data/auth/body/sign_up_request_body.dart';
import 'package:flutter_best_practice/data/auth/entity/sign_in_entity.dart';
import 'package:flutter_best_practice/manager/http_client/http_client_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import 'auth_remote_data_source.dart';

part 'generated/auth_remote_data_source_impl.g.dart';

/*
설명
- RemoteDataSource : Rest api와의 연동을 통한 CRUD 작업 책임을 가짐
- LocalDataSource : Local DB와의 연동을 통한 CRUD 작업 책임을 가짐

사용법
- Provider를 통해 의존성 관리
 */

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSourceImpl(ref.watch(httpClientProvider));
});

@RestApi()
abstract class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  factory AuthRemoteDataSourceImpl(Dio dio) = _AuthRemoteDataSourceImpl;

  @override
  @POST('/auth/signIn')
  Future<SignInEntity> signIn({@Body() required SignInRequestBody body});

  @override
  @POST('/auth/signUp')
  Future<void> signUp({@Body() required SignUpRequestBody body});
}
