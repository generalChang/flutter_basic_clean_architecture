import 'package:flutter/material.dart';
import 'package:flutter_best_practice/ui/view/task/task_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskView extends ConsumerStatefulWidget {
  const TaskView({super.key});

  @override
  ConsumerState<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends ConsumerState<TaskView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(taskControllerProvider.notifier).getTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('task view'),
      ),
    );
  }
}
