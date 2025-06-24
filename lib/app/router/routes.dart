import '../../core/route/route_info.dart';

class Routes {
  static const RouteInfo auth = RouteInfo(name: '/auth', path: '/auth');

  /// 로그인
  static const RouteInfo signIn =
      RouteInfo(name: '/auth/sign-in', path: 'sign-in');

  /// 회원가입
  static const RouteInfo signUp =
      RouteInfo(name: '/auth/sign-up', path: 'sign-up');

  /// 홈
  static const RouteInfo home = RouteInfo(name: '/home', path: '/home');

  /// 홈 > 태스크 조회
  static final RouteInfo task =
      RouteInfo(name: '${home.name}/task', path: 'task');

  /// 홈 > 태스크 조회 > 태스크 추가
  static final RouteInfo addTask =
      RouteInfo(name: '${task.name}/add', path: 'add');
}
