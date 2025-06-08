import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/http_client.g.dart';

@Riverpod(keepAlive: true)
Dio httpClient(HttpClientRef ref) {
  return CustomHttpClient().dio;
}

class CustomHttpClient {
  static const String baseUrl = 'http://dev.co.kr';

  final Dio _dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.jsonContentType,
    );

  Dio get dio => _dio;
}
