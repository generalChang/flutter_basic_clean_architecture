import 'package:flutter_best_practice/data/mapper/sample_mapper.dart';
import 'package:flutter_best_practice/data/request_body/sample/add_sample_request_body.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_remote_data_source.dart';
import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';
import 'package:flutter_best_practice/domain/repository/sample_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/error/api_call.dart';
import '../../app/error/custom_exception.dart';
import '../../app/error/result.dart';
import '../../app/foundation/usecase/no_params.dart';
import '../../domain/param/sample/add_sample_params.dart';

part 'generated/sample_repository_impl.g.dart';

@Riverpod(
  keepAlive: true
)
SampleRepository sampleRepository(Ref ref){
  return SampleRepositoryImpl(remoteDataSource: ref.read(sampleRemoteDataSourceProvider));
}

class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource _remoteDataSource;

  const SampleRepositoryImpl({
    required SampleRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  /// 샘플 목록 조회
  @override
  Future<Result<List<SampleModel>, CustomException>> getSamples(
      {required NoParams params}) async {
    return await apiCall(task: () async {
      final result = await _remoteDataSource.getSamples();
      return result.map((e) => e.toModel()).toList();
    });
  }

  /// 샘플 추가
  @override
  Future<Result<void, CustomException>> addSample(
      {required AddSampleParams params}) async {
    return await apiCall(task: () async {
      return _remoteDataSource.addSample(
          body: AddSampleRequestBody(
              title: params.title, content: params.content));
    });
  }
}
