
import '../../core/helper/route/route_info.dart';

class Routes {

  static const RouteInfo auth =
  RouteInfo(name: '/auth', path: '/auth');

  static const RouteInfo signIn =
      RouteInfo(name: '/auth/sign-in', path: 'sign-in');

  static const RouteInfo signUp =
      RouteInfo(name: '/auth/sign-up', path: 'sign-up');

  static const RouteInfo home =
      RouteInfo(name: '/home', path: '/home');
}
