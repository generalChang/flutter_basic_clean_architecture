import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_data_source.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_db_service.dart';

class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  final TaskLocalDbService localDbService;

  const TaskLocalDataSourceImpl({
    required this.localDbService,
  });

  @override
  Future<void> addTask({required Task task}) async {
    return await localDbService.addTask(task: task);
  }

  @override
  Future<void> deleteTask({required String id}) async {
    return await localDbService.deleteTask(id: id);
  }

  @override
  Future<List<Task>> getAllTasks() async {
    return await localDbService.getAllTasks();
  }

  @override
  Future<Task?> getTask({required String id}) async {
    return await localDbService.getTask(id: id);
  }

  @override
  Future<void> updateTask(Task updatedTask) async {
    return await localDbService.updateTask(updatedTask);
  }
}
