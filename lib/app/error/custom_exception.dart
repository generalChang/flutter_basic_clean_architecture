import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_model.dart';

part 'generated/custom_exception.freezed.dart';

/// 커스텀 에러 타입 모음 (서버, 로컬 DB, 웹소켓 통신 에러 포함)
@freezed
class CustomException with _$CustomException implements Exception {
  const factory CustomException.unauthorized({ErrorModel? model}) =
      Unauthorized;
  const factory CustomException.userNotFound({ErrorModel? model}) =
      UserNotFound;
  const factory CustomException.tokenExpired({ErrorModel? model}) =
      TokenExpired;
  const factory CustomException.productNotFound({ErrorModel? model}) =
      ProductNotFound;
  const factory CustomException.missingRequiredValue(
      {required ErrorModel? model}) = MissingRequiredValue;
  const factory CustomException.invalid({ErrorModel? model}) = Invalid;

  // 임의로 정의한 에러 코드들
  const factory CustomException.serverError() = ServerError;
  const factory CustomException.networkError() = NetworkError;
  const factory CustomException.unknownError() = UnknownError;
  const factory CustomException.formatError() = FormatError;
  const factory CustomException.timeoutError() = TimeoutException;
}
