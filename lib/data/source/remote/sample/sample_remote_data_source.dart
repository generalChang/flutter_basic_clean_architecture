import 'package:dio/dio.dart';
import 'package:flutter_best_practice/app/service/network/http_client.dart';
import 'package:flutter_best_practice/data/entity/sample/sample_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../request_body/sample/add_sample_request_body.dart';

part 'generated/sample_remote_data_source.g.dart';

@Riverpod(
  keepAlive: true
)
SampleRemoteDataSource sampleRemoteDataSource(Ref ref){
  return SampleRemoteDataSource(ref.read(appDioProvider));
}


@RestApi()
abstract class SampleRemoteDataSource {
  factory SampleRemoteDataSource(Dio dio) = _SampleRemoteDataSource;

  /// 샘플 목록 조회
  @GET('/sample')
  Future<List<SampleEntity>> getSamples();

  /// 샘플 추가
  @POST('/sample')
  Future<void> addSample({@Body() required AddSampleRequestBody body});
}
