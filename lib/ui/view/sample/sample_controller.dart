import 'package:flutter_best_practice/ui/view/sample/sample_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../app/error/custom_exception.dart';
import '../../../app/foundation/status/status.dart';
import '../../../app/foundation/usecase/no_params.dart';
import '../../../app/foundation/usecase/use_case.dart';
import '../../../domain/usecase/sample/get_samples_use_case.dart';

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
