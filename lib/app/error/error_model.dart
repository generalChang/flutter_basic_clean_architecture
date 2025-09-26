/// 에러 객체
/// Http Error Response DTO 양식에 따름
class ErrorModel {
  final int statusCode;
  final int errorCode;
  final String message;

  const ErrorModel({
    required this.statusCode,
    required this.errorCode,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
        statusCode: json['statusCode'],
        errorCode: json['errorCode'],
        message: json['message'] is List<String>
            ? json['message'][0]
            : json['message']);
  }
}
