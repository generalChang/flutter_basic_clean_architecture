import 'package:flutter_best_practice/app/di/data/data_dependency.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_in_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/auth/sign_up_use_case.dart';
import 'package:flutter_best_practice/domain/usecase/sample/get_samples_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// domain layer 의존성 관리

// Auth
final signInUseCaseProvider = Provider((ref) {
  return SignInUseCase(authRepository: ref.read(authRepositoryProvider));
});

final signUpUseCaseProvider = Provider((ref) {
  return SignUpUseCase(authRepository: ref.read(authRepositoryProvider));
});

// Sample
final getSamplesUseCaseProvider = Provider((ref) {
  return GetSamplesUseCase(repository: ref.read(sampleRepositoryProvider));
});
