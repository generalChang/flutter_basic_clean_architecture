

import 'package:hive/hive.dart';

part 'generated/task.g.dart';

/// Task data model

@HiveType(typeId: 1)
class Task{

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final bool isDone;

  const Task({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });
}