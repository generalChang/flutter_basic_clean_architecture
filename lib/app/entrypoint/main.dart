import 'package:flutter/material.dart';
import 'package:flutter_best_practice/app/local/app_local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/app.dart';

/// 앱의 진입점
void main() async {
  /// 애플리케이션 초기화 수행

  WidgetsFlutterBinding.ensureInitialized();

  AppLocal.initHive();

  runApp(const ProviderScope(child: MyApp()));
}
