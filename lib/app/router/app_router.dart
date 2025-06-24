import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/app/router/redirect_notifier.dart';
import 'package:flutter_best_practice/app/router/routes.dart';

import 'package:flutter_best_practice/ui/view/auth/sign_in/sign_in_view.dart';
import 'package:flutter_best_practice/ui/view/auth/sign_up/sign_up_view.dart';
import 'package:flutter_best_practice/ui/view/task/add/add_task_view.dart';
import 'package:flutter_best_practice/ui/view/task/task_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/route/app_router_interceptor.dart';
import '../../ui/view/home/home_view.dart';
import 'auth_route_interceptor.dart';

part 'generated/app_router.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter(
      appRouterInterceptors: [ref.read(authRouteInterceptorProvider)],
      refreshListenable: ref.read(redirectNotifierProvider));
}

class AppRouter {
  final List<AppRouterInterceptor> _interceptors;
  final Listenable _refreshListenable;

  AppRouter(
      {required List<AppRouterInterceptor> appRouterInterceptors,
      required Listenable refreshListenable})
      : _refreshListenable = refreshListenable,
        _interceptors = appRouterInterceptors;
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.home.name,
    redirect: (context, state) async {
      /// 배열의 canGo를 동작시키다가 null이 아닌 Interceptor가 나오면 해당 Interceptor의 canGo를 반환한다.
      /// 만약 모든 Interceptor의 canGo가 null이면 null을 반환한다.
      for (AppRouterInterceptor interceptor in _interceptors) {
        final String? result = await interceptor.canGo(context, state);
        if (result != null) return result;
      }
      return null;
    },
    refreshListenable: _refreshListenable,
    routes: <RouteBase>[
      GoRoute(
          path: Routes.auth.path,
          name: Routes.auth.name,
          redirect: (_, __) => null,
          routes: [
            /// 로그인
            GoRoute(
                path: Routes.signIn.path,
                name: Routes.signIn.name,
                builder: (context, state) {
                  return const SignInView();
                }),

            /// 회원가입
            GoRoute(
                path: Routes.signUp.path,
                name: Routes.signUp.name,
                builder: (context, state) {
                  return const SignUpView();
                })
          ]),

      /// 홈
      GoRoute(
          path: Routes.home.path,
          name: Routes.home.name,
          builder: (context, state) => const HomeView(),
          routes: [
            /// 태스크
            GoRoute(
                path: Routes.task.path,
                name: Routes.task.name,
                builder: (context, state) {
                  return const TaskView();
                },
                routes: [
                  /// 태스크 추가
                  GoRoute(
                      path: Routes.addTask.path,
                      name: Routes.addTask.name,
                      builder: (context, index) {
                        return const AddTaskView();
                      })
                ])
          ])
    ],
  );

  GoRouter get router => _router;
}
