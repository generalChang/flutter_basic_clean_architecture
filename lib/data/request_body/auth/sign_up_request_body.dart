import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String password;
  final String name;

  const SignUpRequestBody({
    required this.email,
    required this.password,
    required this.name,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
