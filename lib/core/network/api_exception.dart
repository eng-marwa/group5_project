import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

@JsonSerializable()
class ApiException {
  @JsonKey(name: 'status_code')
  int? statusCode;
  @JsonKey(name: 'status_message')
  String? statusMessage;
  bool success = false;

  ApiException(this.statusCode, this.statusMessage, this.success);

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
}
