import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/ui/controller/auth/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final redirectNotifierProvider = ChangeNotifierProvider((ref) {
  return RedirectNotifier(ref: ref);
});

/// 라우터가 Refresh할 수 있도록 알려주는 Notifier
class RedirectNotifier extends ChangeNotifier {
  final Ref _ref;

  RedirectNotifier({
    required Ref ref,
  }) : _ref = ref {
    _ref.listen(authControllerProvider.select((state) => state.isSignedIn),
        (prev, next) {
      notifyListeners();
    });
  }
}
