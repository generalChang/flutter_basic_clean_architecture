import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Repository {
  const Repository();

  List<String> _getLocalErrorMessages(DioException e) => switch (e.type) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.sendTimeout ||
        DioExceptionType.receiveTimeout =>
          <String>['time out'],
        DioExceptionType.connectionError => <String>['no internet connection'],
        DioExceptionType.badCertificate ||
        DioExceptionType.badResponse ||
        DioExceptionType.cancel ||
        DioExceptionType.unknown =>
          <String>['unknown'],
      };

  @protected
  List<String>? getErrorMessages(DioException e) {
    // http response error
    if (e.response?.statusCode != null) {
      if (e.response?.data['message'] is String) {
        return <String>[e.response?.data['message'] as String];
      }

      return (e.response?.data['message'] as List<dynamic>?)
          ?.map((dynamic e) => e.toString())
          .toList();
    }
    // dio local error
    else {
      return _getLocalErrorMessages(e);
    }
  }
}
