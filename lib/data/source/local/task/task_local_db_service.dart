import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

class TaskLocalDbService {
  /// Hive box key 값
  final _kTaskBox = 'tasks_box';
  //ignore: prefer_const_constructors
  final Uuid _uuid = Uuid();

  /// DB 초기화
  Future<bool> initDb() async {
    /// BoxAdapter 등록
    Hive.registerAdapter(TaskAdapter());

    /// Box 열기
    await Hive.openBox<Task>(_kTaskBox);
    return true;
  }

  /// 태스크 추가
  Future<void> addTask({required Task task}) async {
    final tasksBox = Hive.box<Task>(_kTaskBox);
    final convertedTask = Task(
        id: _uuid.v4(),
        title: task.title,
        description: task.description,
        isDone: task.isDone);
    await tasksBox.put(_uuid.v4(), convertedTask);
  }

  /// 태스크 전체 조회
  Future<List<Task>> getAllTasks() async {
    final tasksBox = Hive.box<Task>(_kTaskBox);
    final result = tasksBox.values.toList();
    return result;
  }

  /// 태스크 조회
  Future<Task?> getTask({required String id}) async {
    final tasksBox = Hive.box<Task>(_kTaskBox);
    return tasksBox.get(id);
  }

  /// 태스크 수정
  Future<void> updateTask(Task updatedTask) async {
    final box = Hive.box<Task>(_kTaskBox);
    if (box.containsKey(updatedTask.id)) {
      await box.put(updatedTask.id, updatedTask);
    }
  }

  /// 태스크 삭제
  Future<void> deleteTask({required String id}) async {
    final tasksBox = Hive.box<Task>(_kTaskBox);
    await tasksBox.delete(id);
  }
}
