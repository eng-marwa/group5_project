import 'package:group5_project/core/network/api_service.dart';
import 'package:group5_project/features/home/model/movie_response.dart';

import '../../../core/network/api_result.dart';

abstract class MovieRepository {
  Future<ApiResult<MovieResponse>> getRemoteNowShowingMovies();

  // Future<ApiResult<MovieEntity>> getCachedNowShowingMovie();

  Future<ApiResult<MovieResponse>> getRemotePopularMovies();
// Future<ApiResult<MovieEntity>> getCachedPopularMovies();
}

class MovieRepositoryImp implements MovieRepository {
  final ApiService _apiService;

  // final HiveService _hiveService;

  // MovieRepositoryImp(this._apiService, this._hiveService);
  MovieRepositoryImp(this._apiService);

  @override
  Future<ApiResult<MovieResponse>> getRemoteNowShowingMovies() {
    return _apiService.fetchNowShowingMovies();
  }

  @override
  Future<ApiResult<MovieResponse>> getRemotePopularMovies() {
    return _apiService.fetchPopularMovies();
  }
}
