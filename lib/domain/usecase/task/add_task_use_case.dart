import 'package:flutter_best_practice/domain/param/task/add_task_params.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';

import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';

class AddTaskUseCase implements UseCase<void, AddTaskParams> {
  final TaskRepository _repository;

  const AddTaskUseCase({
    required TaskRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<void, Exception>> call({required AddTaskParams params}) async {
    return await _repository.addTask(params: params);
  }
}
