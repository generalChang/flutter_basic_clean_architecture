import 'package:flutter_best_practice/data/entity/sample/sample_entity.dart';
import 'package:flutter_best_practice/data/request_body/sample/add_sample_request_body.dart';
import 'package:flutter_best_practice/data/source/remote/sample_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_mock_data_source.g.dart';

@riverpod
SampleMockDataSource sampleMockApi(SampleMockApiRef ref) {
  return SampleMockDataSource();
}

class SampleMockDataSource implements SampleRemoteDataSource {
  @override
  Future<void> addSample({required AddSampleRequestBody body}) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<List<SampleEntity>> getSamples() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      const SampleEntity(id: '1', title: 'title1', content: 'content1'),
      const SampleEntity(id: '2', title: 'title2', content: 'content2'),
    ];
  }
}
