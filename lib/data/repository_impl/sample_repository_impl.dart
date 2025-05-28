import 'package:flutter_best_practice/core/api_call/api_call.dart';
import 'package:flutter_best_practice/core/error_handling/custom_exception.dart';
import 'package:flutter_best_practice/core/error_handling/result.dart';
import 'package:flutter_best_practice/data/mapper/sample_mapper.dart';
import 'package:flutter_best_practice/data/request_body/sample/add_sample_request_body.dart';
import 'package:flutter_best_practice/data/source/mock/sample_mock_data_source.dart';
import 'package:flutter_best_practice/data/source/remote/sample_remote_data_source.dart';
import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:flutter_best_practice/domain/repository/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/usecase/no_params.dart';
import '../../domain/param/sample/add_sample_params.dart';

part 'generated/sample_repository_impl.g.dart';

@Riverpod(keepAlive: true)
SampleRepository sampleRepository(SampleRepositoryRef ref) {
  return SampleRepositoryImpl(api: ref.read(sampleMockApiProvider));
}

class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource _api;

  const SampleRepositoryImpl({
    required SampleRemoteDataSource api,
  }) : _api = api;

  @override
  Future<Result<List<SampleModel>, CustomException>> getSamples(
      {required NoParams params}) async {
    return await apiCall(task: () async {
      final result = await _api.getSamples();
      return result.map((e) => e.toModel()).toList();
    });
  }

  @override
  Future<Result<void, CustomException>> addSample(
      {required AddSampleParams params}) async {
    return await apiCall(task: () async {
      return _api.addSample(
          body: AddSampleRequestBody(
              title: params.title, content: params.content));
    });
  }
}
