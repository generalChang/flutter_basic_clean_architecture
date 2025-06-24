import 'package:flutter/material.dart';
import 'package:flutter_best_practice/app/router/routes.dart';
import 'package:flutter_best_practice/core/status/status.dart';
import 'package:flutter_best_practice/ui/view/task/task_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
    final state = ref.watch(taskControllerProvider);

    if (state.getTasksStatus.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.pushNamed(Routes.addTask.name);
                },
                icon: const Icon(Icons.add)),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Checkbox(value: task.isDone, onChanged: (value) {}),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: state.tasks.length,
            ),
          ),
        ));
  }
}
