import 'package:flutter_best_practice/domain/param/task/add_task_params.dart';
import 'package:flutter_best_practice/ui/view/task/add/add_task_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../app/error/custom_exception.dart';
import '../../../../app/foundation/status/status.dart';
import '../../../../app/foundation/usecase/use_case.dart';
import '../../../../domain/usecase/task/add_task_use_case.dart';

part 'generated/add_task_controller.g.dart';

@riverpod
class AddTaskController extends _$AddTaskController {
  @override
  AddTaskState build() {
    return AddTaskState();
  }

  void updateTitle({required String title}) {
    state = state.copyWith(title: title);
  }

  void updateDesc({required String desc}) {
    state = state.copyWith(description: desc);
  }

  Future<void> addTask() async {
    state = state.copyWith(addTaskStatus: Status.loading);

    final result = await UseCase.execute(
        useCase: ref.read(addTaskUseCaseProvider),
        params: AddTaskParams(
            title: state.title, description: state.description, isDone: false));

    result.map(onSuccess: (success) {
      state = state.copyWith(
        addTaskStatus: Status.success,
      );
    }, onFailure: (failure) {
      state = state.copyWith(
          addTaskStatus: Status.error,
          addTaskException: failure.exception as CustomException);
    });
  }
}
