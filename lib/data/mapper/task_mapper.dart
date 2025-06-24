import 'package:flutter_best_practice/data/entity/task/task.dart';
import 'package:flutter_best_practice/domain/model/task/task_model.dart';

/// Task Data model (data layer) mapper

extension TaskExt on Task {
  TaskModel toModel() =>
      TaskModel(title: title, description: description, isDone: isDone);
}
