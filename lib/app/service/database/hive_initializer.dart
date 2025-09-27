import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

/// 앱의 로컬 DB 연결 및 초기화 관리
abstract final class HiveInitializer {
  HiveInitializer._();

  /// Hive box name
  static const String taskBoxName = 'task_box';

  /// Hive box
  static late Box<Task> taskBox;

  static Future<void> initHive() async {
    /// Hive (Local DB) 초기화
    final appDocumentDir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDir.path);

    /// 앱에서 정의한 Adapter 등록
    Hive.registerAdapter(TaskAdapter());

    /// Box 열기
    taskBox = await Hive.openBox(taskBoxName);
  }
}
