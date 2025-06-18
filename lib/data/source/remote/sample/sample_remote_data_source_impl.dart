import 'package:flutter_best_practice/data/entity/sample/sample_entity.dart';
import 'package:flutter_best_practice/data/request_body/sample/add_sample_request_body.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_api_service.dart';
import 'package:flutter_best_practice/data/source/remote/sample/sample_remote_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_remote_data_source_impl.g.dart';

@Riverpod(keepAlive: true)
SampleRemoteDataSource sampleRemoteDataSource(Ref ref) {
  return SampleRemoteDataSourceImpl(
      sampleApiService: ref.read(sampleApiProvider));
}

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  final SampleApiService _sampleApiService;

  const SampleRemoteDataSourceImpl({
    required SampleApiService sampleApiService,
  }) : _sampleApiService = sampleApiService;

  @override
  Future<void> addSample({required AddSampleRequestBody body}) async {
    return await _sampleApiService.addSample(body: body);
  }

  @override
  Future<List<SampleEntity>> getSamples() async {
    return await _sampleApiService.getSamples();
  }
}
