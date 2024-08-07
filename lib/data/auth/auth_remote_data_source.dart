

import 'package:flutter_best_practice/data/auth/body/sign_up_request_body.dart';

import 'body/sign_in_request_body.dart';
import 'entity/sign_in_entity.dart';

/*
설명
- Remote Data Source를 인터페이스로 추상화한 구조

사용법
- Remote Data Source Impl(구현체)에서 implements 하여 사용

고민사항
- 저희의 아키텍처 구조상 하나의 repository는 하나의 data source를 사용한다는 점을 고려해보았을때
  굳이 인터페이스 분리 원칙이 필요없는 부분인 것 같긴 함
 */

abstract interface class AuthRemoteDataSource{
  Future<SignInEntity> signIn({required SignInRequestBody body});

  Future<void> signUp({required SignUpRequestBody body});
}