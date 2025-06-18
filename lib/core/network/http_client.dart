import 'package:dio/dio.dart';

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
