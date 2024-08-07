import 'package:flutter_best_practice/manager/app/app_state.dart';
import 'package:flutter_best_practice/manager/app/interface/app_init_able.dart';
import 'package:flutter_best_practice/manager/app/interface/app_sign_in_able.dart';
import 'package:flutter_best_practice/manager/app/interface/app_sign_out_able.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appManagerProvider =
    StateNotifierProvider<AppManagerImpl, AppState>((ref) {
  return AppManagerImpl();
});

// 인터페이스 분리 원칙이 적용되어 있음
// 인터페이스의 이름을 ~~Able이라고 만들어주었음 (느낌 오는 네이밍이 떠오르지 않네요)
class AppManagerImpl extends StateNotifier<AppState>
    implements AppInitAble, AppSignInAble, AppSignOutAble {
  AppManagerImpl() : super(AppState.init());

  @override
  Future<void> init() async {
    state = state.copyWith(isSignIn: true);
  }

  @override
  Future<void> signIn({required bool isSignIn}) async {
    state = state.copyWith(isSignIn: isSignIn);
  }

  @override
  Future<void> signOut() async {
    state = state.copyWith(isSignIn: false);
  }
}
