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
}
