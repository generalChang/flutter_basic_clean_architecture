import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/manager/app/app_manager_impl.dart';
import 'package:flutter_best_practice/manager/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterInterceptorProvider = Provider((ref) {
  return AppRouterInterceptor(ref: ref);
});

class AppRouterInterceptor {
  final Ref _ref;

  const AppRouterInterceptor({
    required Ref<Object?> ref,
  }) : _ref = ref;

  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    final bool isSignIn = _ref.read(appManagerProvider).isSignIn;

    if (!isSignIn) {
      if (state.fullPath == null ||
          !state.fullPath!.startsWith(Routes.auth.path)) {
        return Routes.signIn.name;
      }
    }
    // } else {
    //   if (state.fullPath != null && state.fullPath!.startsWith(Routes.auth.path)) {
    //     return Routes.signIn.name;
    //   }
    // }

    return null;
  }
}
