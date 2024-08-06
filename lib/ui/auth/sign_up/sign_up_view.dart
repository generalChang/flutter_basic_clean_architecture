import 'package:flutter/material.dart';
import 'package:flutter_best_practice/ui/auth/sign_up/sign_up_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

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
              onChanged: (String val) {},
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
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // email text field
            TextField(
              onChanged: (String val) {},
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
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // password text field
            TextField(
              onChanged: (String val) {},
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
              ),
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
                  onPressed: () {},
                  child: const Text('회원가입 하기')),
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom)
          ],
        ),
      ),
    );
  }
}
