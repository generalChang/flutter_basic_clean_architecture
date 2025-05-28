// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../custom_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionCopyWith<$Res> {
  factory $CustomExceptionCopyWith(
          CustomException value, $Res Function(CustomException) then) =
      _$CustomExceptionCopyWithImpl<$Res, CustomException>;
}

/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res, $Val extends CustomException>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UnauthorizedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  const _$UnauthorizedImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.unauthorized(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return unauthorized(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return unauthorized?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements CustomException {
  const factory Unauthorized({required final ErrorModel model}) =
      _$UnauthorizedImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UserNotFoundImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$UserNotFoundImpl implements UserNotFound {
  const _$UserNotFoundImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.userNotFound(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFoundImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotFoundImplCopyWith<_$UserNotFoundImpl> get copyWith =>
      __$$UserNotFoundImplCopyWithImpl<_$UserNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return userNotFound(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return userNotFound?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements CustomException {
  const factory UserNotFound({required final ErrorModel model}) =
      _$UserNotFoundImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$UserNotFoundImplCopyWith<_$UserNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenExpiredImplCopyWith<$Res> {
  factory _$$TokenExpiredImplCopyWith(
          _$TokenExpiredImpl value, $Res Function(_$TokenExpiredImpl) then) =
      __$$TokenExpiredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$TokenExpiredImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$TokenExpiredImpl>
    implements _$$TokenExpiredImplCopyWith<$Res> {
  __$$TokenExpiredImplCopyWithImpl(
      _$TokenExpiredImpl _value, $Res Function(_$TokenExpiredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$TokenExpiredImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$TokenExpiredImpl implements TokenExpired {
  const _$TokenExpiredImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.tokenExpired(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenExpiredImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenExpiredImplCopyWith<_$TokenExpiredImpl> get copyWith =>
      __$$TokenExpiredImplCopyWithImpl<_$TokenExpiredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return tokenExpired(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return tokenExpired?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return tokenExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class TokenExpired implements CustomException {
  const factory TokenExpired({required final ErrorModel model}) =
      _$TokenExpiredImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$TokenExpiredImplCopyWith<_$TokenExpiredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductNotFoundImplCopyWith<$Res> {
  factory _$$ProductNotFoundImplCopyWith(_$ProductNotFoundImpl value,
          $Res Function(_$ProductNotFoundImpl) then) =
      __$$ProductNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$ProductNotFoundImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$ProductNotFoundImpl>
    implements _$$ProductNotFoundImplCopyWith<$Res> {
  __$$ProductNotFoundImplCopyWithImpl(
      _$ProductNotFoundImpl _value, $Res Function(_$ProductNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ProductNotFoundImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$ProductNotFoundImpl implements ProductNotFound {
  const _$ProductNotFoundImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.productNotFound(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductNotFoundImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductNotFoundImplCopyWith<_$ProductNotFoundImpl> get copyWith =>
      __$$ProductNotFoundImplCopyWithImpl<_$ProductNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return productNotFound(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return productNotFound?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (productNotFound != null) {
      return productNotFound(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return productNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return productNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (productNotFound != null) {
      return productNotFound(this);
    }
    return orElse();
  }
}

abstract class ProductNotFound implements CustomException {
  const factory ProductNotFound({required final ErrorModel model}) =
      _$ProductNotFoundImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$ProductNotFoundImplCopyWith<_$ProductNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingRequiredValueImplCopyWith<$Res> {
  factory _$$MissingRequiredValueImplCopyWith(_$MissingRequiredValueImpl value,
          $Res Function(_$MissingRequiredValueImpl) then) =
      __$$MissingRequiredValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$MissingRequiredValueImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$MissingRequiredValueImpl>
    implements _$$MissingRequiredValueImplCopyWith<$Res> {
  __$$MissingRequiredValueImplCopyWithImpl(_$MissingRequiredValueImpl _value,
      $Res Function(_$MissingRequiredValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$MissingRequiredValueImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$MissingRequiredValueImpl implements MissingRequiredValue {
  const _$MissingRequiredValueImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.missingRequiredValue(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingRequiredValueImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingRequiredValueImplCopyWith<_$MissingRequiredValueImpl>
      get copyWith =>
          __$$MissingRequiredValueImplCopyWithImpl<_$MissingRequiredValueImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return missingRequiredValue(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return missingRequiredValue?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (missingRequiredValue != null) {
      return missingRequiredValue(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return missingRequiredValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return missingRequiredValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (missingRequiredValue != null) {
      return missingRequiredValue(this);
    }
    return orElse();
  }
}

abstract class MissingRequiredValue implements CustomException {
  const factory MissingRequiredValue({required final ErrorModel model}) =
      _$MissingRequiredValueImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$MissingRequiredValueImplCopyWith<_$MissingRequiredValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<$Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl value, $Res Function(_$InvalidImpl) then) =
      __$$InvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel model});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$InvalidImpl>
    implements _$$InvalidImplCopyWith<$Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl _value, $Res Function(_$InvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$InvalidImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$InvalidImpl implements Invalid {
  const _$InvalidImpl({required this.model});

  @override
  final ErrorModel model;

  @override
  String toString() {
    return 'CustomException.invalid(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      __$$InvalidImplCopyWithImpl<_$InvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return invalid(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return invalid?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid implements CustomException {
  const factory Invalid({required final ErrorModel model}) = _$InvalidImpl;

  ErrorModel get model;
  @JsonKey(ignore: true)
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'CustomException.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements CustomException {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl();

  @override
  String toString() {
    return 'CustomException.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements CustomException {
  const factory NetworkError() = _$NetworkErrorImpl;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownErrorImpl implements UnknownError {
  const _$UnknownErrorImpl();

  @override
  String toString() {
    return 'CustomException.unknownError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel model) unauthorized,
    required TResult Function(ErrorModel model) userNotFound,
    required TResult Function(ErrorModel model) tokenExpired,
    required TResult Function(ErrorModel model) productNotFound,
    required TResult Function(ErrorModel model) missingRequiredValue,
    required TResult Function(ErrorModel model) invalid,
    required TResult Function() serverError,
    required TResult Function() networkError,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorModel model)? unauthorized,
    TResult? Function(ErrorModel model)? userNotFound,
    TResult? Function(ErrorModel model)? tokenExpired,
    TResult? Function(ErrorModel model)? productNotFound,
    TResult? Function(ErrorModel model)? missingRequiredValue,
    TResult? Function(ErrorModel model)? invalid,
    TResult? Function()? serverError,
    TResult? Function()? networkError,
    TResult? Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel model)? unauthorized,
    TResult Function(ErrorModel model)? userNotFound,
    TResult Function(ErrorModel model)? tokenExpired,
    TResult Function(ErrorModel model)? productNotFound,
    TResult Function(ErrorModel model)? missingRequiredValue,
    TResult Function(ErrorModel model)? invalid,
    TResult Function()? serverError,
    TResult Function()? networkError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TokenExpired value) tokenExpired,
    required TResult Function(ProductNotFound value) productNotFound,
    required TResult Function(MissingRequiredValue value) missingRequiredValue,
    required TResult Function(Invalid value) invalid,
    required TResult Function(ServerError value) serverError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TokenExpired value)? tokenExpired,
    TResult? Function(ProductNotFound value)? productNotFound,
    TResult? Function(MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(Invalid value)? invalid,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TokenExpired value)? tokenExpired,
    TResult Function(ProductNotFound value)? productNotFound,
    TResult Function(MissingRequiredValue value)? missingRequiredValue,
    TResult Function(Invalid value)? invalid,
    TResult Function(ServerError value)? serverError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements CustomException {
  const factory UnknownError() = _$UnknownErrorImpl;
}
