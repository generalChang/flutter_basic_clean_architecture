import 'package:flutter/material.dart';
import 'package:flutter_best_practice/app/environment/environment.dart';
import 'package:flutter_best_practice/app/environment/environment_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/app.dart';

/// 앱의 진입점
void main() async {
  /// 실행환경 설정 및 애플리케이션 초기화 수행
  Environment.init(EnvironmentType.dev).setUp();

  runApp(const ProviderScope(child: MyApp()));
}
