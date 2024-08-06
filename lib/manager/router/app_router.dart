import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/manager/router/app_router_intercepter.dart';
import 'package:flutter_best_practice/manager/router/redirect_notifier.dart';
import 'package:flutter_best_practice/manager/router/routes.dart';
import 'package:flutter_best_practice/ui/auth/sign_in/sign_in_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider((ref) {
  return AppRouter(
      appRouterInterceptor: ref.watch(appRouterInterceptorProvider),
      refreshListenable: ref.watch(redirectNotifierProvider));
});

class AppRouter {
  final AppRouterInterceptor _appRouterInterceptor;
  final Listenable _refreshListenable;

  AppRouter(
      {required AppRouterInterceptor appRouterInterceptor,
      required Listenable refreshListenable})
      : _refreshListenable = refreshListenable,
        _appRouterInterceptor = appRouterInterceptor;
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/auth/sign-in',
    redirect: _appRouterInterceptor.redirect,
    refreshListenable: _refreshListenable,
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
