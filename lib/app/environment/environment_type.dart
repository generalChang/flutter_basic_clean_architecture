import 'env.dart';

/// 실행 환경 종류
enum EnvironmentType {
  dev, // 개발
  prod; // 운영

  /// 여러 환경 변수들
  String get baseUrl => switch (this) {
        EnvironmentType.dev => Env.devServerBaseUrl,
        EnvironmentType.prod => Env.prodServerBaseUrl,
      };
}
