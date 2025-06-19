import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/router/app_router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routerConfig = ref.watch(appRouterProvider).router;
    return MaterialApp.router(
      routerConfig: routerConfig,
      title: 'Flutter Basic Clean Architecture',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0),
        useMaterial3: true,
      ),
    );
  }
}
