// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Status get addTaskStatus => throw _privateConstructorUsedError;
  CustomException get addTaskException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskStateCopyWith<AddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) then) =
      _$AddTaskStateCopyWithImpl<$Res, AddTaskState>;
  @useResult
  $Res call(
      {String title,
      String description,
      Status addTaskStatus,
      CustomException addTaskException});

  $CustomExceptionCopyWith<$Res> get addTaskException;
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res, $Val extends AddTaskState>
    implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? addTaskStatus = null,
    Object? addTaskException = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addTaskException: null == addTaskException
          ? _value.addTaskException
          : addTaskException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomExceptionCopyWith<$Res> get addTaskException {
    return $CustomExceptionCopyWith<$Res>(_value.addTaskException, (value) {
      return _then(_value.copyWith(addTaskException: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTaskStateImplCopyWith<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  factory _$$AddTaskStateImplCopyWith(
          _$AddTaskStateImpl value, $Res Function(_$AddTaskStateImpl) then) =
      __$$AddTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      Status addTaskStatus,
      CustomException addTaskException});

  @override
  $CustomExceptionCopyWith<$Res> get addTaskException;
}

/// @nodoc
class __$$AddTaskStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$AddTaskStateImpl>
    implements _$$AddTaskStateImplCopyWith<$Res> {
  __$$AddTaskStateImplCopyWithImpl(
      _$AddTaskStateImpl _value, $Res Function(_$AddTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? addTaskStatus = null,
    Object? addTaskException = null,
  }) {
    return _then(_$AddTaskStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addTaskException: null == addTaskException
          ? _value.addTaskException
          : addTaskException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$AddTaskStateImpl extends _AddTaskState {
  _$AddTaskStateImpl(
      {this.title = '',
      this.description = '',
      this.addTaskStatus = Status.loading,
      this.addTaskException = const CustomException.unknownError()})
      : super._();

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final Status addTaskStatus;
  @override
  @JsonKey()
  final CustomException addTaskException;

  @override
  String toString() {
    return 'AddTaskState(title: $title, description: $description, addTaskStatus: $addTaskStatus, addTaskException: $addTaskException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.addTaskException, addTaskException) ||
                other.addTaskException == addTaskException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, addTaskStatus, addTaskException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      __$$AddTaskStateImplCopyWithImpl<_$AddTaskStateImpl>(this, _$identity);
}

abstract class _AddTaskState extends AddTaskState {
  factory _AddTaskState(
      {final String title,
      final String description,
      final Status addTaskStatus,
      final CustomException addTaskException}) = _$AddTaskStateImpl;
  _AddTaskState._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  Status get addTaskStatus;
  @override
  CustomException get addTaskException;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
