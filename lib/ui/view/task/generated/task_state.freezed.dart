// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  List<TaskModel> get tasks => throw _privateConstructorUsedError;
  Status get getTasksStatus => throw _privateConstructorUsedError;
  CustomException get getTasksException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {List<TaskModel> tasks,
      Status getTasksStatus,
      CustomException getTasksException});

  $CustomExceptionCopyWith<$Res> get getTasksException;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? getTasksStatus = null,
    Object? getTasksException = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      getTasksStatus: null == getTasksStatus
          ? _value.getTasksStatus
          : getTasksStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTasksException: null == getTasksException
          ? _value.getTasksException
          : getTasksException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomExceptionCopyWith<$Res> get getTasksException {
    return $CustomExceptionCopyWith<$Res>(_value.getTasksException, (value) {
      return _then(_value.copyWith(getTasksException: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskModel> tasks,
      Status getTasksStatus,
      CustomException getTasksException});

  @override
  $CustomExceptionCopyWith<$Res> get getTasksException;
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? getTasksStatus = null,
    Object? getTasksException = null,
  }) {
    return _then(_$TaskStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      getTasksStatus: null == getTasksStatus
          ? _value.getTasksStatus
          : getTasksStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      getTasksException: null == getTasksException
          ? _value.getTasksException
          : getTasksException // ignore: cast_nullable_to_non_nullable
              as CustomException,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl implements _TaskState {
  _$TaskStateImpl(
      {final List<TaskModel> tasks = const [],
      this.getTasksStatus = Status.loading,
      this.getTasksException = const CustomException.unknownError()})
      : _tasks = tasks;

  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final Status getTasksStatus;
  @override
  @JsonKey()
  final CustomException getTasksException;

  @override
  String toString() {
    return 'TaskState(tasks: $tasks, getTasksStatus: $getTasksStatus, getTasksException: $getTasksException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.getTasksStatus, getTasksStatus) ||
                other.getTasksStatus == getTasksStatus) &&
            (identical(other.getTasksException, getTasksException) ||
                other.getTasksException == getTasksException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      getTasksStatus,
      getTasksException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  factory _TaskState(
      {final List<TaskModel> tasks,
      final Status getTasksStatus,
      final CustomException getTasksException}) = _$TaskStateImpl;

  @override
  List<TaskModel> get tasks;
  @override
  Status get getTasksStatus;
  @override
  CustomException get getTasksException;
  @override
  @JsonKey(ignore: true)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
