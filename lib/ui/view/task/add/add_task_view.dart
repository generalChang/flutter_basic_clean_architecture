import 'package:flutter/material.dart';
import 'package:flutter_best_practice/core/status/status.dart';
import 'package:flutter_best_practice/ui/view/task/add/add_task_controller.dart';
import 'package:flutter_best_practice/ui/view/task/task_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddTaskView extends ConsumerStatefulWidget {
  const AddTaskView({super.key});

  @override
  ConsumerState<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends ConsumerState<AddTaskView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addTaskControllerProvider);
    final viewmodel = ref.watch(addTaskControllerProvider.notifier);

    ref.listen(addTaskControllerProvider.select((state) => state.addTaskStatus),
        (_, next) {
      if (next.isSuccess) {
        ref.read(taskControllerProvider.notifier).getTasks();
        context.pop();
      } else if (next.isError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('오류가 발생했습니다.')));
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('추가하기'),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (val) {
                              viewmodel.updateTitle(title: val);
                            },
                            decoration:
                                const InputDecoration(hintText: '제목을 입력하세요'),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            onChanged: (val) {
                              viewmodel.updateDesc(desc: val);
                            },
                            decoration:
                                const InputDecoration(hintText: '설명을 입력하세요'),
                          )
                        ],
                      ),
                    ),
                  ),
                  FilledButton(
                      onPressed: state.addButtonEnabled
                          ? () {
                              viewmodel.addTask();
                            }
                          : null,
                      child: const Text('추가하기'))
                ],
              ))),
    );
  }
}
