import 'package:flutter_best_practice/app/di/config/configuration_dependency.dart';
import 'package:flutter_best_practice/data/repository_impl/auth_repository_impl.dart';
import 'package:flutter_best_practice/data/repository_impl/sample_repository_impl.dart';
import 'package:flutter_best_practice/data/repository_impl/task_repository_impl.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_data_source_impl.dart';
import 'package:flutter_best_practice/data/source/mock/auth_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/mock/sample_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_remote_data_source.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_remote_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// data layer 의존성 관리

/// Auth ///
final authRemoteDataSourceProvider = Provider((ref) {
  return AuthRemoteDataSource(ref.read(appDioProvider));
});

final authMockDataSourceProvider = Provider((ref) {
  return AuthMockDataSource();
});

final authRepositoryProvider = Provider((ref) {
  return AuthRepositoryImpl(
      remoteDataSource: ref.read(authMockDataSourceProvider));
});

/// Sample ///
final sampleRemoteDataSourceProvider = Provider((ref) {
  return SampleRemoteDataSource(ref.read(appDioProvider));
});

final sampleMockDataSourceProvider = Provider((ref) {
  return SampleMockDataSource();
});

final sampleRepositoryProvider = Provider((ref) {
  return SampleRepositoryImpl(
      remoteDataSource: ref.read(sampleMockDataSourceProvider));
});

/// Task ///
final taskLocalDataSourceProvider = Provider((ref) {
  return TaskLocalDataSourceImpl();
});

final taskRepositoryProvider = Provider((ref) {
  return TaskRepositoryImpl(
      localDataSource: ref.read(taskLocalDataSourceProvider));
});
