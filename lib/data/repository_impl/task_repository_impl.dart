import 'package:flutter_best_practice/core/api_call/api_call.dart';
import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/error_handling/result.dart';
import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:flutter_best_practice/data/mapper/task_mapper.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_data_source.dart';
import 'package:flutter_best_practice/domain/model/task/task_model.dart';
import 'package:flutter_best_practice/domain/param/task/add_task_params.dart';
import 'package:flutter_best_practice/domain/param/task/get_task_params.dart';
import 'package:flutter_best_practice/domain/repository/task_repository.dart';

import '../../core/usecase/no_params.dart';
import '../../domain/param/task/delete_task_params.dart';
import '../../domain/param/task/update_task_params.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskLocalDataSource _localDataSource;

  const TaskRepositoryImpl({
    required TaskLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  /// 태스크 추가
  @override
  Future<Result<void, CustomException>> addTask(
      {required AddTaskParams params}) async {
    return await apiCall(task: () async {
      return await _localDataSource.addTask(
          task: Task(
              title: params.title,
              description: params.description,
              isDone: params.isDone));
    });
  }

  /// 태스크 전체 조회
  @override
  Future<Result<List<TaskModel>, CustomException>> getAllTasks(
      {required NoParams params}) async {
    return await apiCall(task: () async {
      final result = await _localDataSource.getAllTasks();
      return result.map((e) => e.toModel()).toList();
    });
  }

  /// 태스크 조회
  @override
  Future<Result<TaskModel?, CustomException>> getTask(
      {required GetTaskParams params}) async {
    return await apiCall(task: () async {
      final result = await _localDataSource.getTask(id: params.id);
      return result?.toModel();
    });
  }

  /// 태스크 수정
  @override
  Future<Result<void, CustomException>> updateTask(
      {required UpdateTaskParams params}) async {
    return await apiCall(task: () async {
      return await _localDataSource.updateTask(
          id: params.id,
          updatedTask: Task(
              title: params.title,
              description: params.description,
              isDone: params.isDone));
    });
  }

  /// 태스크 삭제
  @override
  Future<Result<void, CustomException>> deleteTask(
      {required DeleteTaskParams params}) async {
    return await apiCall(task: () async {
      return await _localDataSource.deleteTask(id: params.id);
    });
  }
}
