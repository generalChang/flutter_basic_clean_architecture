import 'package:flutter_best_practice/data/repository_impl/task_repository_impl.dart';
import 'package:flutter_best_practice/domain/param/task/delete_task_params.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/use_case.dart';

part 'generated/delete_task_use_case.g.dart';

@Riverpod(
  keepAlive: true
)
DeleteTaskUseCase deleteTaskUseCase(Ref ref){
  return DeleteTaskUseCase(repository: ref.read(taskRepositoryProvider));
}

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
