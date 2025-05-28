import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    /// 로그인 여부
    @Default(false) bool isSignedIn,
  }) = _AuthState;
}
