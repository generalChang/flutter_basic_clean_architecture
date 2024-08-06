import 'package:flutter/material.dart';
import 'package:flutter_best_practice/manager/app/app_manager_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appManager = ref.read(appManagerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈화면'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                appManager.signOut();
              },
              child: const Text('로그아웃'),
            ),
            const SizedBox(
              height: kToolbarHeight,
            )
          ],
        ),
      ),
    );
  }
}
