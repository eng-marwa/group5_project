import 'package:group5_project/core/network/api_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = _Success<T>;
  factory ApiResult.failure(ApiException e) = _Failure<T>;
}
