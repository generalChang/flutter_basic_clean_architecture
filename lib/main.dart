import 'package:flutter/material.dart';
import 'package:flutter_best_practice/data/auth/auth_remote_data_source_impl.dart';
import 'package:flutter_best_practice/data/auth/auth_repository_impl.dart';
import 'package:flutter_best_practice/domain/auth/auth_repository.dart';
import 'package:flutter_best_practice/manager/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWith((ref) => AuthRepositoryImpl(
            authRemoteDataSource: ref.watch(authRemoteDataSourceProvider))),
      ],
      child: const MyApp(),
    ),
  );
}

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
      title: 'Flutter Demo',
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
