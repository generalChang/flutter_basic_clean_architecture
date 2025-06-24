import 'package:flutter_best_practice/app/di/domain/domain_dependency.dart';
import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/usecase/no_params.dart';
import 'package:flutter_best_practice/core/usecase/use_case.dart';
import 'package:flutter_best_practice/ui/view/task/task_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/status/status.dart';

part 'generated/task_controller.g.dart';

@riverpod
class TaskController extends _$TaskController {
  @override
  TaskState build() {
    return TaskState();
  }

  /// 태스크 전체 조회
  Future<void> getTasks() async {
    state = state.copyWith(getTasksStatus: Status.loading);

    final result = await UseCase.execute(
        useCase: ref.read(getTasksUseCaseProvider), params: NoParams());

    result.map(onSuccess: (success) {
      state =
          state.copyWith(getTasksStatus: Status.success, tasks: success.data);
    }, onFailure: (failure) {
      state = state.copyWith(
          getTasksStatus: Status.error,
          getTasksException: failure.exception as CustomException);
    });
  }
}
