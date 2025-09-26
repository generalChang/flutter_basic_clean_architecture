import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:flutter_best_practice/domain/repository/sample_repository.dart';
import '../../../app/error/custom_exception.dart';
import '../../../app/error/result.dart';
import '../../../app/foundation/usecase/no_params.dart';
import '../../../app/foundation/usecase/use_case.dart';

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
