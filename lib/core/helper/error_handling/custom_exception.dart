sealed class CustomException implements Exception {
  final String message;

  const CustomException({
    required this.message,
  });
}

class UserNotFound extends CustomException {
  UserNotFound({required super.message});
}

class ProductNotFound extends CustomException {
  ProductNotFound({required super.message});
}

class Unauthorized extends CustomException {
  Unauthorized({required super.message});
}

class UncaughtError extends CustomException {
  UncaughtError({required super.message});
}

// 이렇게 하는 방법도 있습니다.
// @freezed
// class CustomException with _$CustomException implements Exception{
//   const factory CustomException.unauthorized(String message) = _Unauthorized;
//   const factory CustomException.userNotFound(String message) = _UserNotFound;
//   const factory CustomException.tokenExpired(String message) = _TokenExpired;
//   const factory CustomException.productNotFound(String message) = _ProductNotFound;
//   const factory CustomException.missingRequiredValue(String message) = _MissingRequiredValue;
//   const factory CustomException.unCaughtByFront(String message) = _UnCaughtByFront;
//   const factory CustomException.invalid(String maessage) = _Invalid;
// }
