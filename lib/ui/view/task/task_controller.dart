import 'package:flutter_best_practice/ui/view/task/task_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/custom_exception.dart';
import '../../../app/foundation/status/status.dart';
import '../../../app/foundation/usecase/no_params.dart';
import '../../../app/foundation/usecase/use_case.dart';
import '../../../domain/usecase/task/get_tasks_use_case.dart';

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
