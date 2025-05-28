// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Status get signUpLoadingStatus => throw _privateConstructorUsedError;
  CustomException get signUpException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      Status signUpLoadingStatus,
      CustomException signUpException});

  $CustomExceptionCopyWith<$Res> get signUpException;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? signUpLoadingStatus = null,
    Object? signUpException = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signUpLoadingStatus: null == signUpLoadingStatus
          ? _value.signUpLoadingStatus
          : signUpLoadingStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      signUpException: null == signUpException
          ? _value.signUpException
          : signUpException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomExceptionCopyWith<$Res> get signUpException {
    return $CustomExceptionCopyWith<$Res>(_value.signUpException, (value) {
      return _then(_value.copyWith(signUpException: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      Status signUpLoadingStatus,
      CustomException signUpException});

  @override
  $CustomExceptionCopyWith<$Res> get signUpException;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? signUpLoadingStatus = null,
    Object? signUpException = null,
  }) {
    return _then(_$SignUpStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      signUpLoadingStatus: null == signUpLoadingStatus
          ? _value.signUpLoadingStatus
          : signUpLoadingStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      signUpException: null == signUpException
          ? _value.signUpException
          : signUpException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl extends _SignUpState {
  _$SignUpStateImpl(
      {this.name = '',
      this.email = '',
      this.password = '',
      this.signUpLoadingStatus = Status.none,
      this.signUpException = const CustomException.unknownError()})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final Status signUpLoadingStatus;
  @override
  @JsonKey()
  final CustomException signUpException;

  @override
  String toString() {
    return 'SignUpState(name: $name, email: $email, password: $password, signUpLoadingStatus: $signUpLoadingStatus, signUpException: $signUpException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.signUpLoadingStatus, signUpLoadingStatus) ||
                other.signUpLoadingStatus == signUpLoadingStatus) &&
            (identical(other.signUpException, signUpException) ||
                other.signUpException == signUpException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, password, signUpLoadingStatus, signUpException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  factory _SignUpState(
      {final String name,
      final String email,
      final String password,
      final Status signUpLoadingStatus,
      final CustomException signUpException}) = _$SignUpStateImpl;
  _SignUpState._() : super._();

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  Status get signUpLoadingStatus;
  @override
  CustomException get signUpException;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
