import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_model.dart';

part 'generated/custom_exception.freezed.dart';

/// 서버 에러를 명시적으로 다루기 위한 자료구조
@freezed
class CustomException with _$CustomException implements Exception {
  const factory CustomException.unauthorized({required ErrorModel model}) =
      Unauthorized;
  const factory CustomException.userNotFound({required ErrorModel model}) =
      UserNotFound;
  const factory CustomException.tokenExpired({required ErrorModel model}) =
      TokenExpired;
  const factory CustomException.productNotFound({required ErrorModel model}) =
      ProductNotFound;
  const factory CustomException.missingRequiredValue(
      {required ErrorModel model}) = MissingRequiredValue;
  const factory CustomException.invalid({required ErrorModel model}) = Invalid;

// 임의로 정의한 에러 코드들
  /// {
  ///   "status": 600,
  ///   "code": "ZZ000",
  ///   "message": "서버로부터 응답이 없습니다.",
  /// }
  const factory CustomException.serverError() = ServerError;

  /// {
  ///   "status": 601,
  ///   "code": "ZZ001",
  ///   "message": "통신 에러입니다.",
  /// }
  const factory CustomException.networkError() = NetworkError;

  /// {
  ///   "status": 602,
  ///   "code": "ZZ002",
  ///   "message": "알 수 없는 에러입니다.",
  /// }
  const factory CustomException.unknownError() = UnknownError;
}
