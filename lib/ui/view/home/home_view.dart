import 'package:flutter/material.dart';
import 'package:flutter_best_practice/app/router/routes.dart';
import 'package:flutter_best_practice/ui/controller/auth/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authControllerProvider.notifier);
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
                authController.signOut();
              },
              child: const Text('로그아웃'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.task.name);
              },
              child: const Text('태스크 조회'),
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
