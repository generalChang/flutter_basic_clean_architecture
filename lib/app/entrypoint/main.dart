import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import '../../ui/app.dart';

/// 앱의 진입점
void main() async {
  /// 애플리케이션 초기화 수행

  WidgetsFlutterBinding.ensureInitialized();

  /// Hive (Local DB) 초기화
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);

  runApp(const ProviderScope(child: MyApp()));
}
