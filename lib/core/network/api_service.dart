import 'package:dio/dio.dart';
import 'package:group5_project/core/network/api_exception.dart';
import 'package:group5_project/core/network/api_result.dart';
import 'package:group5_project/core/network/constants.dart';
import 'package:group5_project/features/home/model/movie_response.dart';

abstract class ApiService {
  Future<ApiResult<MovieResponse>> fetchNowShowingMovies();

  Future<ApiResult<MovieResponse>> fetchPopularMovies();
}

class ApiServiceImpl implements ApiService {
  final Dio _dio;

  ApiServiceImpl(this._dio);

  @override
  Future<ApiResult<MovieResponse>> fetchNowShowingMovies() async {
    Response response = await _dio.get(nowShowingEndPoint);
    if (response.statusCode == 200) {
      return ApiResult.success(MovieResponse.fromJson(response.data));
    } else {
      //return ApiResult.failure(ApiException.fromJson(response.data));
      return ApiResult.failure(
        ApiException(response.statusCode,
            response.statusMessage ?? 'Failed to fetch data', false),
      );
    }
  }

  @override
  Future<ApiResult<MovieResponse>> fetchPopularMovies() async {
    Response response = await _dio.get(popularEndPoint);
    if (response.statusCode == 200) {
      return ApiResult.success(MovieResponse.fromJson(response.data));
    } else {
      //return ApiResult.failure(ApiException.fromJson(response.data));
      return ApiResult.failure(
        ApiException(response.statusCode,
            response.statusMessage ?? 'Failed to fetch data', false),
      );
    }
  }
}
