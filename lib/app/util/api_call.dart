import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_best_practice/app/error/result.dart';
import '../error/custom_exception.dart';
import '../error/error_model.dart';

/// 과업을 실행시키고, 성공/실패를 Result로 일관되게 반환하는 유틸.
/// Repository에서 사용 권장.
abstract final class ActionCallGuard {
  /// Future<T> -> Future<Result<T, CustomException>>
  /// 과업 실패 시 내부 에러 핸들링 정책에 따라 CustomException으로 매핑.
  static Future<Result<T, CustomException>> runFuture<T>(
      {required Future<T> Function() task}) async {
    try {
      final value = await task();
      return Success<T, CustomException>(data: value);
    } on DioException catch (e, st) {
      return Failure<T, CustomException>(exception: _mapDioException(e, st));
    } on FormatException catch (e, st) {
      return Failure<T, CustomException>(exception: _mapException(e, st));
    } on TimeoutException catch (e, st) {
      return Failure<T, CustomException>(exception: _mapException(e, st));
    } catch (e, st) {
      return Failure<T, CustomException>(exception: _mapException(e, st));
    }
  }

  /// --- Stream<E> -> Stream<Result<M, Exception>> ---
  /// E: Entity 타입 (데이터소스가 내보내는 원천 타입)
  /// M: Model 타입 (도메인에서 사용하는 최종 타입)
  static Stream<Result<M, CustomException>> runStream<E, M>({
    required Stream<E> source,
    required M Function(E entity) toModel,
    FutureOr<void> Function()? onFinally,
  }) async* {
    final transformed = source.transform(
      StreamTransformer<E, Result<M, CustomException>>.fromHandlers(
        handleData: (entity, sink) {
          try {
            sink.add(Success(data: toModel(entity)));
          } catch (e, st) {
            sink.add(Failure(exception: _mapException(e, st)));
          }
        },
        handleError: (error, stack, sink) {
          sink.add(Failure(exception: _mapException(error, stack)));
        },
      ),
    );

    try {
      await for (final event in transformed) {
        yield event;
      }
    } finally {
      if (onFinally != null) await onFinally();
    }
  }

  /// 동기 작업에서 예외를 "매핑해서" 재던지기(시그니처를 void로 유지하고 싶을 때)
  static T runOrRethrow<T>(T Function() op) {
    try {
      return op();
    } catch (e, st) {
      throw _mapException(e, st);
    }
  }

  /// --- 내부 공통 매퍼(외부에서 주입 X) ---
  static CustomException _mapException(Object error, StackTrace stack) {
    if (error is CustomException) return error;

    if (error is DioException) {
      return _mapDioException(error, stack);
    }
    if (error is FormatException) {
      return const CustomException.formatError();
    }
    if (error is TimeoutException) {
      return const CustomException.timeoutError();
    }
    // 필요하면 SocketException, PlatformException 등 추가
    return const CustomException.unknownError();
  }

  static CustomException _mapDioException(DioException e, StackTrace st) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const CustomException.timeoutError();

      case DioExceptionType.badCertificate:
        return const CustomException.networkError();

      case DioExceptionType.cancel:
        return const CustomException.networkError();

      case DioExceptionType.badResponse:
        // 서버가 보낸 바디를 ErrorModel로 파싱 시도
        final data = e.response?.data;
        if (data == null) {
          return const CustomException.serverError();
        }
        try {
          final errorModel = ErrorModel.fromJson(data);
          // 예시 맵핑: 서비스에 맞게 수정
          switch (errorModel.errorCode) {
            case 4000:
              return CustomException.unauthorized(model: errorModel);
            case 4001:
              return CustomException.userNotFound(model: errorModel);
            case 4002:
              return CustomException.tokenExpired(model: errorModel);
            case 4003:
              return CustomException.productNotFound(model: errorModel);
            case 4004:
              return CustomException.missingRequiredValue(model: errorModel);
            case 4005:
              return CustomException.invalid(model: errorModel);
            default:
              return const CustomException.networkError();
          }
        } catch (_) {
          // ErrorModel 포맷이 예상과 다를 때
          return const CustomException.serverError();
        }

      case DioExceptionType.unknown:
        // 소켓 끊김 등 네트워크 이슈가 여기에 들어오는 경우가 많음
        return const CustomException.networkError();
      case DioExceptionType.connectionError:
        throw UnimplementedError();
    }
  }
}
