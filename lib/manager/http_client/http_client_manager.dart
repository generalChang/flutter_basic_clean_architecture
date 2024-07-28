import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final httpClientProvider = Provider<Dio>((ref) {
  return HttpClientManager().dio;
});

class HttpClientManager {
  static const String baseUrl = 'http://dev.lugez.co.kr';

  final Dio _dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.jsonContentType,
    );

  Dio get dio => _dio;
}
