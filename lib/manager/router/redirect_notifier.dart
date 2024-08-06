import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practice/manager/app/app_manager_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final redirectNotifierProvider = ChangeNotifierProvider((ref){
  return RedirectNotifier(ref: ref);
});

class RedirectNotifier extends ChangeNotifier {
  final Ref _ref;

  RedirectNotifier({
    required Ref ref,
  }) : _ref = ref {
    _ref.listen(appManagerProvider.select((state) => state.isSignIn),
        (prev, next) {
      notifyListeners();
    });
  }
}
