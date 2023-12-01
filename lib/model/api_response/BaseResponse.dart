class BaseResponses {
  BaseResponses({
    required this.statusCode,
    this.success,
    required this.data,
    required this.message,
  });
  late final int? statusCode;
  late final bool? success;
  late final dynamic data;
  late final String message;

  BaseResponses.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    success = json['success'];
    data = json['data'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['success'] = success;
    _data['data'] = data.toJson();
    _data['message'] = message;
    return _data;
  }
}
