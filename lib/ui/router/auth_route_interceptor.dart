import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/core/route/app_router_interceptor.dart';
import 'package:flutter_best_practice/ui/controller/auth/auth_controller.dart';
import 'package:flutter_best_practice/ui/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_route_interceptor.g.dart';

@Riverpod(keepAlive: true)
AuthRouteInterceptor authRouteInterceptor(AuthRouteInterceptorRef ref) {
  return AuthRouteInterceptor(ref: ref);
}

/// Auth Screen으로의 Redirect 여부를 판단하는 Interceptor
class AuthRouteInterceptor implements AppRouterInterceptor {
  final Ref _ref;

  const AuthRouteInterceptor({
    required Ref<Object?> ref,
  }) : _ref = ref;

  @override
  FutureOr<String?> canGo(BuildContext context, GoRouterState state) {
    final bool isSignIn = _ref.read(authControllerProvider).isSignedIn;

    if (!isSignIn) {
      if (state.fullPath == null ||
          !state.fullPath!.startsWith(Routes.auth.path)) {
        return Routes.signIn.name;
      }
    } else {
      if (state.fullPath?.startsWith(Routes.auth.name) == true) {
        return Routes.home.name;
      }
    }

    return null;
  }
}
