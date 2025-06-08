import 'package:json_annotation/json_annotation.dart';

part 'generated/sign_in_request_body.g.dart';

@JsonSerializable()
class SignInRequestBody {
  final String email;
  final String password;

  const SignInRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$SignInRequestBodyToJson(this);
}
