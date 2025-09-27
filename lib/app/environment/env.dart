import 'package:envied/envied.dart';

part 'generated/env.g.dart';

/// 전체 환경변수 모음
@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'DEV_SERVER_BASE_URL')
  static final String devServerBaseUrl = _Env.devServerBaseUrl;
  @EnviedField(varName: 'PROD_SERVER_BASE_URL')
  static final String prodServerBaseUrl = _Env.prodServerBaseUrl;
}
