import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/status/status.dart';
import 'package:flutter_best_practice/domain/model/task/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/task_state.freezed.dart';

/// task view의 상태를 관리하기 위한 state class
@freezed
class TaskState with _$TaskState {
  factory TaskState({
    @Default([]) List<TaskModel> tasks,
    @Default(Status.loading) Status getTasksStatus,
    @Default(CustomException.unknownError()) CustomException getTasksException,
  }) = _TaskState;
}
