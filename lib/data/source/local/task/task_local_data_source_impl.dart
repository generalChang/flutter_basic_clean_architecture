import 'package:flutter_best_practice/data/source/local/_core/hive_initializer.dart';
import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_data_source.dart';
import 'package:uuid/uuid.dart';

class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  //ignore: prefer_const_constructors
  final Uuid _uuid = Uuid();

  /// 태스크 추가
  @override
  Future<void> addTask({required Task task}) async {
    final tasksBox = HiveInitializer.taskBox;
    final convertedTask = Task(
        title: task.title, description: task.description, isDone: task.isDone);
    await tasksBox.put(_uuid.v4(), convertedTask);
  }

  /// 태스크 전체 조회
  @override
  Future<List<Task>> getAllTasks() async {
    final tasksBox = HiveInitializer.taskBox;
    final result = tasksBox.values.toList();
    return result;
  }

  /// 태스크 조회
  @override
  Future<Task?> getTask({required String id}) async {
    final tasksBox = HiveInitializer.taskBox;
    return tasksBox.get(id);
  }

  /// 태스크 수정
  @override
  Future<void> updateTask(
      {required String id, required Task updatedTask}) async {
    final box = HiveInitializer.taskBox;
    if (box.containsKey(id)) {
      await box.put(id, updatedTask);
    }
  }

  /// 태스크 삭제
  @override
  Future<void> deleteTask({required String id}) async {
    final tasksBox = HiveInitializer.taskBox;
    await tasksBox.delete(id);
  }
}
