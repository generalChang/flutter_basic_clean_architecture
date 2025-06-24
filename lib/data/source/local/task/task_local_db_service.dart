import '../../../entity/task/task.dart';

abstract interface class TaskLocalDbService {
  /// 태스크 추가
  Future<void> addTask({required Task task});

  /// 태스크 전체 조회
  Future<List<Task>> getAllTasks();

  /// 태스크 조회
  Future<Task?> getTask({required String id});

  /// 태스크 수정
  Future<void> updateTask({required String id, required Task updatedTask});

  /// 태스크 삭제
  Future<void> deleteTask({required String id});
}
