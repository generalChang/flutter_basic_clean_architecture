import '../../data/source/local/_core/hive_initializer.dart';
import 'environment_type.dart';
import 'package:flutter/material.dart';

/// 실행환경 설정
class Environment {
  const Environment._internal();

  factory Environment.init(EnvironmentType type) {
    if (_isInitialized) {
      return _instance;
    }

    _type = type;
    _instance = const Environment._internal();
    _isInitialized = true;
    return _instance;
  }

  static late final Environment _instance;
  static late EnvironmentType _type;
  static bool _isInitialized = false;

  /// 실행환경에 따른 초기 설정
  Future<void> setUp() async {
    if (!_isInitialized) {
      return;
    }

    WidgetsFlutterBinding.ensureInitialized();
    HiveInitializer.initHive();
  }

  static Environment get instance => _instance;
  static EnvironmentType get enviromentType => _type;
}
