import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error_handling/custom_exception.dart';
import '../../../../core/status/status.dart';

part 'generated/add_task_state.freezed.dart';

/// add task view의 상태를 관리하기 위한 state class

@freezed
class AddTaskState with _$AddTaskState {
  factory AddTaskState({
    @Default('') String title,
    @Default('') String description,
    @Default(Status.loading) Status addTaskStatus,
    @Default(CustomException.unknownError()) CustomException addTaskException,
  }) = _AddTaskState;

  const AddTaskState._();

  bool get addButtonEnabled => title.isNotEmpty && description.isNotEmpty;
}
