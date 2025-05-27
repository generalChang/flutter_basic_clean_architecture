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
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$UnauthorizedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements CustomException {
  const factory _Unauthorized(final String message) = _$UnauthorizedImpl;

  String get message;
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$UserNotFoundImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.userNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotFoundImplCopyWith<_$UserNotFoundImpl> get copyWith =>
      __$$UserNotFoundImplCopyWithImpl<_$UserNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return userNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return userNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements CustomException {
  const factory _UserNotFound(final String message) = _$UserNotFoundImpl;

  String get message;
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$TokenExpiredImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenExpiredImpl implements _TokenExpired {
  const _$TokenExpiredImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.tokenExpired(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenExpiredImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenExpiredImplCopyWith<_$TokenExpiredImpl> get copyWith =>
      __$$TokenExpiredImplCopyWithImpl<_$TokenExpiredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return tokenExpired(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return tokenExpired?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return tokenExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class _TokenExpired implements CustomException {
  const factory _TokenExpired(final String message) = _$TokenExpiredImpl;

  String get message;
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$ProductNotFoundImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductNotFoundImpl implements _ProductNotFound {
  const _$ProductNotFoundImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.productNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductNotFoundImplCopyWith<_$ProductNotFoundImpl> get copyWith =>
      __$$ProductNotFoundImplCopyWithImpl<_$ProductNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return productNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return productNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (productNotFound != null) {
      return productNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return productNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return productNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (productNotFound != null) {
      return productNotFound(this);
    }
    return orElse();
  }
}

abstract class _ProductNotFound implements CustomException {
  const factory _ProductNotFound(final String message) = _$ProductNotFoundImpl;

  String get message;
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$MissingRequiredValueImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MissingRequiredValueImpl implements _MissingRequiredValue {
  const _$MissingRequiredValueImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.missingRequiredValue(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingRequiredValueImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

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
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return missingRequiredValue(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return missingRequiredValue?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (missingRequiredValue != null) {
      return missingRequiredValue(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return missingRequiredValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return missingRequiredValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (missingRequiredValue != null) {
      return missingRequiredValue(this);
    }
    return orElse();
  }
}

abstract class _MissingRequiredValue implements CustomException {
  const factory _MissingRequiredValue(final String message) =
      _$MissingRequiredValueImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MissingRequiredValueImplCopyWith<_$MissingRequiredValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnCaughtByFrontImplCopyWith<$Res> {
  factory _$$UnCaughtByFrontImplCopyWith(_$UnCaughtByFrontImpl value,
          $Res Function(_$UnCaughtByFrontImpl) then) =
      __$$UnCaughtByFrontImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnCaughtByFrontImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$UnCaughtByFrontImpl>
    implements _$$UnCaughtByFrontImplCopyWith<$Res> {
  __$$UnCaughtByFrontImplCopyWithImpl(
      _$UnCaughtByFrontImpl _value, $Res Function(_$UnCaughtByFrontImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnCaughtByFrontImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnCaughtByFrontImpl implements _UnCaughtByFront {
  const _$UnCaughtByFrontImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomException.unCaughtByFront(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnCaughtByFrontImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnCaughtByFrontImplCopyWith<_$UnCaughtByFrontImpl> get copyWith =>
      __$$UnCaughtByFrontImplCopyWithImpl<_$UnCaughtByFrontImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return unCaughtByFront(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return unCaughtByFront?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (unCaughtByFront != null) {
      return unCaughtByFront(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return unCaughtByFront(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return unCaughtByFront?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (unCaughtByFront != null) {
      return unCaughtByFront(this);
    }
    return orElse();
  }
}

abstract class _UnCaughtByFront implements CustomException {
  const factory _UnCaughtByFront(final String message) = _$UnCaughtByFrontImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UnCaughtByFrontImplCopyWith<_$UnCaughtByFrontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<$Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl value, $Res Function(_$InvalidImpl) then) =
      __$$InvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String maessage});
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
    Object? maessage = null,
  }) {
    return _then(_$InvalidImpl(
      null == maessage
          ? _value.maessage
          : maessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidImpl implements _Invalid {
  const _$InvalidImpl(this.maessage);

  @override
  final String maessage;

  @override
  String toString() {
    return 'CustomException.invalid(maessage: $maessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl &&
            (identical(other.maessage, maessage) ||
                other.maessage == maessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      __$$InvalidImplCopyWithImpl<_$InvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) userNotFound,
    required TResult Function(String message) tokenExpired,
    required TResult Function(String message) productNotFound,
    required TResult Function(String message) missingRequiredValue,
    required TResult Function(String message) unCaughtByFront,
    required TResult Function(String maessage) invalid,
  }) {
    return invalid(maessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? userNotFound,
    TResult? Function(String message)? tokenExpired,
    TResult? Function(String message)? productNotFound,
    TResult? Function(String message)? missingRequiredValue,
    TResult? Function(String message)? unCaughtByFront,
    TResult? Function(String maessage)? invalid,
  }) {
    return invalid?.call(maessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? userNotFound,
    TResult Function(String message)? tokenExpired,
    TResult Function(String message)? productNotFound,
    TResult Function(String message)? missingRequiredValue,
    TResult Function(String message)? unCaughtByFront,
    TResult Function(String maessage)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(maessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_ProductNotFound value) productNotFound,
    required TResult Function(_MissingRequiredValue value) missingRequiredValue,
    required TResult Function(_UnCaughtByFront value) unCaughtByFront,
    required TResult Function(_Invalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_ProductNotFound value)? productNotFound,
    TResult? Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult? Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult? Function(_Invalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_ProductNotFound value)? productNotFound,
    TResult Function(_MissingRequiredValue value)? missingRequiredValue,
    TResult Function(_UnCaughtByFront value)? unCaughtByFront,
    TResult Function(_Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid implements CustomException {
  const factory _Invalid(final String maessage) = _$InvalidImpl;

  String get maessage;
  @JsonKey(ignore: true)
  _$$InvalidImplCopyWith<_$InvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
