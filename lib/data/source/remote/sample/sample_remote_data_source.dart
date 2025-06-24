import '../../../entity/sample/sample_entity.dart';
import '../../../request_body/sample/add_sample_request_body.dart';

abstract interface class SampleRemoteDataSource {
  /// 샘플 목록 조회
  Future<List<SampleEntity>> getSamples();

  /// 샘플 추가
  Future<void> addSample({required AddSampleRequestBody body});
}
