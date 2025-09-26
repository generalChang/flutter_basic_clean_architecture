import 'package:flutter_best_practice/domain/model/task/task_model.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';

import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/no_params.dart';
import '../../../app/foundation/usecase/use_case.dart';

class GetTasksUseCase implements UseCase<List<TaskModel>, NoParams> {
  final TaskRepository _repository;

  const GetTasksUseCase({
    required TaskRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<List<TaskModel>, Exception>> call(
      {required NoParams params}) async {
    return await _repository.getAllTasks(params: params);
  }
}
