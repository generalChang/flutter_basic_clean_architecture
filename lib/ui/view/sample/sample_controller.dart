import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/usecase/no_params.dart';
import 'package:flutter_best_practice/core/usecase/use_case.dart';
import 'package:flutter_best_practice/domain/usecase/sample/get_samples_use_case.dart';
import 'package:flutter_best_practice/ui/view/sample/sample_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/status/status.dart';

part 'generated/sample_controller.g.dart';

@riverpod
class SampleController extends _$SampleController {
  @override
  SampleState build() {
    return SampleState();
  }

  /// 샘플 목록 조회
  Future<void> getSamples() async {
    state = state.copyWith(getSamplesStatus: Status.loading);

    final result = await UseCase.execute(
        useCase: ref.read(getSamplesUseCaseProvider), params: NoParams());

    result.map(onSuccess: (onSuccess) {
      state = state.copyWith(
          getSamplesStatus: Status.success, samples: onSuccess.data);
    }, onFailure: (onFailure) {
      state = state.copyWith(
          getSamplesStatus: Status.error,
          getSamplesException: onFailure.exception as CustomException);
    });
  }
}
