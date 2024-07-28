import 'package:flutter/material.dart';
import 'package:flutter_best_practice/ui/auth/sign_in/sign_in_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInView extends ConsumerWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInViewModelProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('sign in page'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('sign In view'),
              SizedBox(
                height: kToolbarHeight,
              )
            ],
          ),
        ));
  }
}
