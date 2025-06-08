// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleState {
  List<SampleModel> get samples => throw _privateConstructorUsedError;
  Status get getSamplesStatus => throw _privateConstructorUsedError;
  CustomException get getSamplesException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res, SampleState>;
  @useResult
  $Res call(
      {List<SampleModel> samples,
      Status getSamplesStatus,
      CustomException getSamplesException});

  $CustomExceptionCopyWith<$Res> get getSamplesException;
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res, $Val extends SampleState>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? samples = null,
    Object? getSamplesStatus = null,
    Object? getSamplesException = null,
  }) {
    return _then(_value.copyWith(
      samples: null == samples
          ? _value.samples
          : samples // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      getSamplesStatus: null == getSamplesStatus
          ? _value.getSamplesStatus
          : getSamplesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getSamplesException: null == getSamplesException
          ? _value.getSamplesException
          : getSamplesException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomExceptionCopyWith<$Res> get getSamplesException {
    return $CustomExceptionCopyWith<$Res>(_value.getSamplesException, (value) {
      return _then(_value.copyWith(getSamplesException: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleStateImplCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$SampleStateImplCopyWith(
          _$SampleStateImpl value, $Res Function(_$SampleStateImpl) then) =
      __$$SampleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SampleModel> samples,
      Status getSamplesStatus,
      CustomException getSamplesException});

  @override
  $CustomExceptionCopyWith<$Res> get getSamplesException;
}

/// @nodoc
class __$$SampleStateImplCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$SampleStateImpl>
    implements _$$SampleStateImplCopyWith<$Res> {
  __$$SampleStateImplCopyWithImpl(
      _$SampleStateImpl _value, $Res Function(_$SampleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? samples = null,
    Object? getSamplesStatus = null,
    Object? getSamplesException = null,
  }) {
    return _then(_$SampleStateImpl(
      samples: null == samples
          ? _value._samples
          : samples // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      getSamplesStatus: null == getSamplesStatus
          ? _value.getSamplesStatus
          : getSamplesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getSamplesException: null == getSamplesException
          ? _value.getSamplesException
          : getSamplesException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$SampleStateImpl implements _SampleState {
  _$SampleStateImpl(
      {final List<SampleModel> samples = const [],
      this.getSamplesStatus = Status.loading,
      this.getSamplesException = const CustomException.unknownError()})
      : _samples = samples;

  final List<SampleModel> _samples;
  @override
  @JsonKey()
  List<SampleModel> get samples {
    if (_samples is EqualUnmodifiableListView) return _samples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_samples);
  }

  @override
  @JsonKey()
  final Status getSamplesStatus;
  @override
  @JsonKey()
  final CustomException getSamplesException;

  @override
  String toString() {
    return 'SampleState(samples: $samples, getSamplesStatus: $getSamplesStatus, getSamplesException: $getSamplesException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStateImpl &&
            const DeepCollectionEquality().equals(other._samples, _samples) &&
            (identical(other.getSamplesStatus, getSamplesStatus) ||
                other.getSamplesStatus == getSamplesStatus) &&
            (identical(other.getSamplesException, getSamplesException) ||
                other.getSamplesException == getSamplesException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_samples),
      getSamplesStatus,
      getSamplesException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStateImplCopyWith<_$SampleStateImpl> get copyWith =>
      __$$SampleStateImplCopyWithImpl<_$SampleStateImpl>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  factory _SampleState(
      {final List<SampleModel> samples,
      final Status getSamplesStatus,
      final CustomException getSamplesException}) = _$SampleStateImpl;

  @override
  List<SampleModel> get samples;
  @override
  Status get getSamplesStatus;
  @override
  CustomException get getSamplesException;
  @override
  @JsonKey(ignore: true)
  _$$SampleStateImplCopyWith<_$SampleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
