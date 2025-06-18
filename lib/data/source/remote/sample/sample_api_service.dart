import 'package:dio/dio.dart';
import 'package:flutter_best_practice/data/entity/sample/sample_entity.dart';
import 'package:retrofit/http.dart';

import '../../../request_body/sample/add_sample_request_body.dart';

part 'generated/sample_api_service.g.dart';


@RestApi()
abstract class SampleApiService {
  factory SampleApiService(Dio dio) = _SampleApiService;

  /// 샘플 목록 조회
  @GET('/sample')
  Future<List<SampleEntity>> getSamples();

  /// 샘플 추가
  @POST('/sample')
  Future<void> addSample({@Body() required AddSampleRequestBody body});
}
