class ErrorModel {
  final int statusCode;
  final String message;

  const ErrorModel({
    required this.statusCode,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {

    return ErrorModel(
        statusCode: json['statusCode'],
        message: json['message'] is List<String>
            ? json['message'][0]
            : json['message']);
  }
}
