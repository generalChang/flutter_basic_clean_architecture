// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Status get signInLoadingStatus => throw _privateConstructorUsedError;
  CustomException get signInException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String password,
      Status signInLoadingStatus,
      CustomException signInException});

  $CustomExceptionCopyWith<$Res> get signInException;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? signInLoadingStatus = null,
    Object? signInException = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signInLoadingStatus: null == signInLoadingStatus
          ? _value.signInLoadingStatus
          : signInLoadingStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      signInException: null == signInException
          ? _value.signInException
          : signInException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomExceptionCopyWith<$Res> get signInException {
    return $CustomExceptionCopyWith<$Res>(_value.signInException, (value) {
      return _then(_value.copyWith(signInException: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      Status signInLoadingStatus,
      CustomException signInException});

  @override
  $CustomExceptionCopyWith<$Res> get signInException;
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? signInLoadingStatus = null,
    Object? signInException = null,
  }) {
    return _then(_$SignInStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signInLoadingStatus: null == signInLoadingStatus
          ? _value.signInLoadingStatus
          : signInLoadingStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      signInException: null == signInException
          ? _value.signInException
          : signInException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  _$SignInStateImpl(
      {this.email = '',
      this.password = '',
      this.signInLoadingStatus = Status.none,
      this.signInException = const CustomException.unknownError()});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final Status signInLoadingStatus;
  @override
  @JsonKey()
  final CustomException signInException;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, signInLoadingStatus: $signInLoadingStatus, signInException: $signInException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signInLoadingStatus, signInLoadingStatus) ||
                other.signInLoadingStatus == signInLoadingStatus) &&
            (identical(other.signInException, signInException) ||
                other.signInException == signInException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, signInLoadingStatus, signInException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState(
      {final String email,
      final String password,
      final Status signInLoadingStatus,
      final CustomException signInException}) = _$SignInStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  Status get signInLoadingStatus;
  @override
  CustomException get signInException;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
