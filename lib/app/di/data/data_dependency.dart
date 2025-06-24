import 'package:flutter_best_practice/app/di/config/configuration_dependency.dart';
import 'package:flutter_best_practice/data/repository_impl/auth_repository_impl.dart';
import 'package:flutter_best_practice/data/repository_impl/sample_repository_impl.dart';
import 'package:flutter_best_practice/data/repository_impl/task_repository_impl.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_data_source_impl.dart';
import 'package:flutter_best_practice/data/source/local/task/task_local_db_service_impl.dart';
import 'package:flutter_best_practice/data/source/mock/auth_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/mock/sample_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_api_service.dart';
import 'package:flutter_best_practice/data/source/remote/auth/auth_remote_data_source_impl.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_api_service.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_remote_data_source_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// data layer 의존성 관리

/// Auth ///
final authApiServiceProvider = Provider((ref) {
  return AuthApiService(ref.read(appDioProvider));
});

final authRemoteDataSourceProvider = Provider((ref) {
  return AuthRemoteDataSourceImpl(
      authApiService: ref.read(authApiServiceProvider));
});

final authMockDataSourceProvider = Provider((ref) {
  return AuthMockDataSource();
});

final authRepositoryProvider = Provider((ref) {
  return AuthRepositoryImpl(
      remoteDataSource: ref.read(authMockDataSourceProvider));
});

/// Sample ///
final sampleApiServiceProvider = Provider((ref) {
  return SampleApiService(ref.read(appDioProvider));
});

final sampleRemoteDataSourceProvider = Provider((ref) {
  return SampleRemoteDataSourceImpl(
      sampleApiService: ref.read(sampleApiServiceProvider));
});

final sampleMockDataSourceProvider = Provider((ref) {
  return SampleMockDataSource();
});

final sampleRepositoryProvider = Provider((ref) {
  return SampleRepositoryImpl(
      remoteDataSource: ref.read(sampleMockDataSourceProvider));
});

/// Task ///
final taskLocalDbServiceProvider = Provider((ref) {
  return TaskLocalDbServiceImpl();
});

final taskLocalDataSourceProvider = Provider((ref) {
  return TaskLocalDataSourceImpl(
      localDbService: ref.read(taskLocalDbServiceProvider));
});

final taskRepositoryProvider = Provider((ref) {
  return TaskRepositoryImpl(
      localDataSource: ref.read(taskLocalDataSourceProvider));
});
