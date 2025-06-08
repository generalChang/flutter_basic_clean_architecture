import 'package:flutter/material.dart';
import 'package:flutter_best_practice/core/status/status.dart';
import 'package:flutter_best_practice/ui/view/auth/sign_up/sign_up_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpControllerProvider);
    final controller = ref.read(signUpControllerProvider.notifier);

    ref.listen(
        signUpControllerProvider.select((state) => state.signUpLoadingStatus),
        (prev, next) {
      if (next == Status.success) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('회원가입에 성공하였습니다.'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 3),
        ));
        context.pop();
      } else if (next == Status.error) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('회원가입에 실패하였습니다.'),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 3),
        ));
      }
    });

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        title: const Text('회원가입'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Container(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            // name text field
            TextField(
              onChanged: (String val) {
                controller.updateName(name: val);
              },
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  label: const Text('이름'),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  errorText: state.isNameValid ? null : '잘못된 이름입니다.'),
            ),
            const SizedBox(
              height: 20,
            ),

            // email text field
            TextField(
              onChanged: (String val) {
                controller.updateEmail(email: val);
              },
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  label: const Text('이메일'),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  errorText: state.isEmailValid ? null : '잘못된 이메일입니다.'),
            ),
            const SizedBox(
              height: 20,
            ),

            // password text field
            TextField(
              onChanged: (String val) {
                controller.updatePassword(password: val);
              },
              obscureText: true,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  label: const Text('비밀번호'),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  errorText: state.isPasswordValid ? null : '잘못된 비밀번호입니다.'),
            ),
            const SizedBox(
              height: 20,
            ),

            // login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.orange.shade500,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(16)),
                  onPressed: state.signUpButtonEnabled
                      ? () {
                          controller.signUp();
                        }
                      : null,
                  child: const Text('회원가입 하기')),
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom)
          ],
        ),
      ),
    );
  }
}
