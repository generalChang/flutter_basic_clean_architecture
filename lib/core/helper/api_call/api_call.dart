import 'package:dio/dio.dart';
import 'package:flutter_best_practice/core/helper/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/helper/error_handling/error_model.dart';

import '../result/result.dart';

Future<Result<T, CustomException>> apiCall<T>(
    {required Future<T> Function() task}) async {
  try {
    T value = await task();
    return Success(data: value);
  } on DioException catch (e) {
    if (e.response == null || e.response!.data == null) {
      return Failure(exception: UncaughtError(message: '알수 없는 에러입니다.'));
    }

    final errorModel = ErrorModel.fromJson(e.response!.data);

    // return switch (errorModel.statusCode) {
    //   401 =>
    //     const Failure(exception: CustomException.unauthorized('접근이 제한되었습니다.')),
    //   404 => const Failure(
    //       exception: CustomException.productNotFound('상품이 존재하지 않습니다.')),
    //   _ => Failure(
    //       exception:
    //           CustomException.unCaughtByFront('알수없는 에러입니다: ${e.toString()}'))
    // };

    return switch (errorModel.statusCode) {
      401 => Failure(exception: UserNotFound(message: '해당하는 유저가 없습니다.')),
      404 => Failure(exception: ProductNotFound(message: '상품이 존재하지 않습니다.')),
      _ => Failure(exception: UncaughtError(message: e.toString()))
    };
  } catch (e) {
    return Failure(exception: UncaughtError(message: e.toString()));
  }
}
