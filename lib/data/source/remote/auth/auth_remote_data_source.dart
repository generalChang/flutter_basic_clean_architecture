import '../../../entity/auth/sign_in_entity.dart';
import '../../../request_body/auth/sign_in_request_body.dart';
import '../../../request_body/auth/sign_up_request_body.dart';

abstract interface class AuthRemoteDataSource {
  /// 로그인
  Future<SignInEntity> signIn({required SignInRequestBody body});

  /// 회원가입
  Future<void> signUp({required SignUpRequestBody body});
}
