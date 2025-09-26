import 'package:flutter_best_practice/data/repository_impl/task_repository_impl.dart';
import 'package:flutter_best_practice/domain/param/task/add_task_params.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';

part 'generated/add_task_use_case.g.dart';

@Riverpod(
  keepAlive: true
)
AddTaskUseCase addTaskUseCase(Ref ref){
  return AddTaskUseCase(repository: ref.read(taskRepositoryProvider));
}

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
