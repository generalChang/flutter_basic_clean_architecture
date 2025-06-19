import 'package:flutter_best_practice/app/di/data/data_dependency.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_in_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_up_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/sample/get_samples_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/task/add_task_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/task/delete_task_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/task/get_tasks_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// domain layer 의존성 관리

/// Auth ///
final signInUseCaseProvider = Provider((ref) {
  return SignInUseCase(authRepository: ref.read(authRepositoryProvider));
});

final signUpUseCaseProvider = Provider((ref) {
  return SignUpUseCase(authRepository: ref.read(authRepositoryProvider));
});

/// Sample ///
final getSamplesUseCaseProvider = Provider((ref) {
  return GetSamplesUseCase(repository: ref.read(sampleRepositoryProvider));
});

/// Task ///
final getTasksUseCaseProvider = Provider((ref) {
  return GetTasksUseCase(repository: ref.read(taskRepositoryProvider));
});

final deleteTaskUseCaseProvider = Provider((ref) {
  return DeleteTaskUseCase(repository: ref.read(taskRepositoryProvider));
});

final addTaskUseCaseProvider = Provider((ref) {
  return AddTaskUseCase(repository: ref.read(taskRepositoryProvider));
});
