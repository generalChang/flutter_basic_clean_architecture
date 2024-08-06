import 'package:flutter_best_practice/manager/app/app_manager.dart';
import 'package:flutter_best_practice/manager/app/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appManagerProvider =
    StateNotifierProvider<AppManagerImpl, AppState>((ref) {
  return AppManagerImpl();
});

class AppManagerImpl extends StateNotifier<AppState> implements AppManager {
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
