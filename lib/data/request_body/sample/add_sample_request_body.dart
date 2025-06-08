
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/add_sample_request_body.g.dart';

@JsonSerializable()
class AddSampleRequestBody{
  final String title;
  final String content;

  const AddSampleRequestBody({
    required this.title,
    required this.content,
  });
  
  Map<String,dynamic> toJson() => _$AddSampleRequestBodyToJson(this);
}