

import 'package:hive/hive.dart';

part 'generated/task.g.dart';

/// Task data model

@HiveType(typeId: 1)
class Task{

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final bool isDone;

  const Task({
    required this.title,
    required this.description,
    required this.isDone,
  });
}