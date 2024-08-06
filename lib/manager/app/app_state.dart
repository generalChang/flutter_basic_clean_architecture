class AppState {
  final bool isSignIn;

  const AppState({
    required this.isSignIn,
  });

  AppState.init() : isSignIn = false;

  AppState copyWith({
    bool? isSignIn,
  }) {
    return AppState(
      isSignIn: isSignIn ?? this.isSignIn,
    );
  }
}
