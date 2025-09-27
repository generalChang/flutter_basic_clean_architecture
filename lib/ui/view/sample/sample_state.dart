import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/error/custom_exception.dart';
import '../../../app/foundation/status/status.dart';
part 'generated/sample_state.freezed.dart';

/// sample view의 상태를 관리하기 위한 state class
@freezed
class SampleState with _$SampleState {
  factory SampleState(
      {@Default([]) List<SampleModel> samples,
      @Default(Status.loading) Status getSamplesStatus,
      @Default(CustomException.unknownError())
      CustomException getSamplesException}) = _SampleState;
}
