import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/status/status.dart';

part 'generated/sample_state.freezed.dart';

@freezed
class SampleState with _$SampleState {
  factory SampleState(
      {@Default([]) List<SampleModel> samples,
      @Default(Status.loading) Status getSamplesStatus,
      @Default(CustomException.unknownError())
      CustomException getSamplesException}) = _SampleState;
}
