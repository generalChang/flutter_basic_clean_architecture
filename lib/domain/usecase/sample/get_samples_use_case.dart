import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/error_handling/result.dart';
import 'package:flutter_best_practice/core/usecase/no_params.dart';
import 'package:flutter_best_practice/core/usecase/use_case.dart';
import 'package:flutter_best_practice/data/repository_impl/sample_repository_impl.dart';
import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:flutter_best_practice/domain/repository/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/get_samples_use_case.g.dart';

@Riverpod(keepAlive: true)
GetSamplesUseCase getSamplesUseCase(GetSamplesUseCaseRef ref) {
  return GetSamplesUseCase(repository: ref.read(sampleRepositoryProvider));
}

class GetSamplesUseCase implements UseCase<List<SampleModel>, NoParams> {
  final SampleRepository repository;

  const GetSamplesUseCase({
    required this.repository,
  });

  @override
  Future<Result<List<SampleModel>, CustomException>> call(
      {required NoParams params}) async {
    return await repository.getSamples(params: params);
  }
}
