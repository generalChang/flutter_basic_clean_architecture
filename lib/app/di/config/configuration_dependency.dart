import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/http_client.dart';

/// App Configuration 의존성 관리

final appDioProvider = Provider((ref) {
  return CustomHttpClient(baseUrl: '서버 URL을 명시').dio;
});
