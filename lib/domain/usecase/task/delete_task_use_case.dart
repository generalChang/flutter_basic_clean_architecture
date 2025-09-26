import 'package:flutter_best_practice/domain/param/task/delete_task_params.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';

import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';

class DeleteTaskUseCase implements UseCase<void, DeleteTaskParams> {
  final TaskRepository _repository;

  const DeleteTaskUseCase({
    required TaskRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<void, Exception>> call(
      {required DeleteTaskParams params}) async {
    return await _repository.deleteTask(params: params);
  }
}
