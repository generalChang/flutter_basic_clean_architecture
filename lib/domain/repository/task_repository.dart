import '../../core/error_handling/custom_exception.dart';
import '../../core/error_handling/result.dart';
import '../../core/usecase/no_params.dart';
import '../model/task/task_model.dart';
import '../param/task/add_task_params.dart';
import '../param/task/delete_task_params.dart';
import '../param/task/get_task_params.dart';
import '../param/task/update_task_params.dart';

abstract interface class TaskRepository {
  /// 태스크 추가
  Future<Result<void, CustomException>> addTask(
      {required AddTaskParams params});

  /// 태스크 전체 조회
  Future<Result<List<TaskModel>, CustomException>> getAllTasks(
      {required NoParams params});

  /// 태스크 조회
  Future<Result<TaskModel?, CustomException>> getTask(
      {required GetTaskParams params});

  /// 태스크 수정
  Future<Result<void, CustomException>> updateTask(
      {required UpdateTaskParams params});

  /// 태스크 삭제
  Future<Result<void, CustomException>> deleteTask(
      {required DeleteTaskParams params});
}
