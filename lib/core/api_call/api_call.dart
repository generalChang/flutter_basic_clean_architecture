import 'package:dio/dio.dart';

import '../error_handling/custom_exception.dart';
import '../error_handling/error_model.dart';
import '../error_handling/result.dart';

/// 과업을 실행시키고, 과업의 성공 혹은 실패 상태를 반환
/// 과업 실패 시 내부적으로 에러핸들링에 따라 명확한 에러를 포함한 Failure를 반환
/// 과업 성공 시 업데이트 된 데이터를 포함한 Success를 반환
Future<Result<T, CustomException>> apiCall<T>(
    {required Future<T> Function() task}) async {
  try {
    T value = await task();
    return Success(data: value);
  } on DioException catch (e) {
    if (e.response == null || e.response!.data == null) {
      return const Failure(exception: CustomException.serverError());
    }

    final errorModel = ErrorModel.fromJson(e.response!.data);

    // 아래 에러코드는 예시입니다.
    return switch (errorModel.errorCode) {
      4000 =>
        Failure(exception: CustomException.unauthorized(model: errorModel)),
      4001 =>
        Failure(exception: CustomException.userNotFound(model: errorModel)),
      4002 =>
        Failure(exception: CustomException.tokenExpired(model: errorModel)),
      4003 =>
        Failure(exception: CustomException.productNotFound(model: errorModel)),
      4004 => Failure(
          exception: CustomException.missingRequiredValue(model: errorModel)),
      4005 => Failure(exception: CustomException.invalid(model: errorModel)),
      _ => const Failure(exception: CustomException.networkError()),
    };
  } catch (e) {
    return const Failure(exception: CustomException.unknownError());
  }
}
