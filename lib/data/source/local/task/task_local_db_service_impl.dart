import 'package:flutter_best_practice/app/local/app_local.dart';
import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_db_service.dart';
import 'package:uuid/uuid.dart';

class TaskLocalDbServiceImpl implements TaskLocalDbService {
  //ignore: prefer_const_constructors
  final Uuid _uuid = Uuid();

  /// 태스크 추가
  @override
  Future<void> addTask({required Task task}) async {
    final tasksBox = AppLocal.taskBox;
    final convertedTask = Task(
        title: task.title, description: task.description, isDone: task.isDone);
    await tasksBox.put(_uuid.v4(), convertedTask);
  }

  /// 태스크 전체 조회
  @override
  Future<List<Task>> getAllTasks() async {
    final tasksBox = AppLocal.taskBox;
    final result = tasksBox.values.toList();
    return result;
  }

  /// 태스크 조회
  @override
  Future<Task?> getTask({required String id}) async {
    final tasksBox = AppLocal.taskBox;
    return tasksBox.get(id);
  }

  /// 태스크 수정
  @override
  Future<void> updateTask(
      {required String id, required Task updatedTask}) async {
    final box = AppLocal.taskBox;
    if (box.containsKey(id)) {
      await box.put(id, updatedTask);
    }
  }

  /// 태스크 삭제
  @override
  Future<void> deleteTask({required String id}) async {
    final tasksBox = AppLocal.taskBox;
    await tasksBox.delete(id);
  }
}
