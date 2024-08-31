import 'package:dio/dio.dart';
import 'package:group5_project/core/network/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  DioConfig._();

  static const Duration _timeOut = Duration(seconds: 5);
  static Dio? _dio;

  static Dio getDio() {
    _dio ??= Dio()
      ..options.baseUrl = baseUrl
      ..options.queryParameters = {'api_key': apiKey}
      ..options.connectTimeout = _timeOut
      ..options.receiveTimeout = _timeOut
      ..interceptors.add(PrettyDioLogger(
          responseBody: true, requestHeader: true, error: true));
    return _dio!;
  }
}
