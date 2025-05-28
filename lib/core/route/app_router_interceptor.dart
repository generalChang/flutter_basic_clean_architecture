import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract interface class AppRouterInterceptor {
  FutureOr<String?> canGo(BuildContext context, GoRouterState state);
}
