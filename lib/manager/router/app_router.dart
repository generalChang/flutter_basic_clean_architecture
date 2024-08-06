import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/manager/router/routes.dart';
import 'package:flutter_best_practice/ui/auth/sign_in/sign_in_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider((ref) {
  return AppRouter();
});

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/auth/sign-in',
    routes: <RouteBase>[
      GoRoute(
          path: Routes.auth.path,
          name: Routes.auth.name,
          redirect: (BuildContext context, GoRouterState state) {
            if (state.fullPath == null || state.fullPath == Routes.auth.path) {
              return Routes.signIn.name;
            }

            return null;
          },
          routes: [
            GoRoute(
                path: Routes.signIn.path,
                name: Routes.signIn.name,
                builder: (context, state) {
                  return const SignInView();
                })
          ])
    ],
  );

  GoRouter get router => _router;
}
