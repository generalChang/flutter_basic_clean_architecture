import 'package:dio/dio.dart';

class CustomHttpClient {
  final String baseUrl;

  CustomHttpClient({
    required this.baseUrl,
  });

  late final Dio dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.jsonContentType,
    );
}
