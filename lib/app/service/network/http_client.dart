import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/http_client.g.dart';

@Riverpod(keepAlive: true)
Dio appDio(Ref ref) {
  return AppDio(baseUrl: '서버 url').dio;
}

class AppDio {
  final String baseUrl;

  AppDio({
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
