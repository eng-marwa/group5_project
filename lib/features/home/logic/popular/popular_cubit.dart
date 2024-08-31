import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group5_project/features/home/logic/popular/popular_state.dart';

import '../../../../core/network/api_result.dart';
import '../../model/movie_response.dart';
import '../../repository/movie_repository.dart';

class PopularCubit extends Cubit<PopularMovieState> {
  final MovieRepository _movieRepository;

  PopularCubit(this._movieRepository) : super(PopularMovieState.initial());

  Future<void> emitStates() async {
    emit(PopularMovieState.loading());
    ApiResult<MovieResponse> apiResult =
        await _movieRepository.getRemotePopularMovies();
    apiResult.when(
      success: (data) => emit(PopularMovieState.loaded(data)),
      failure: (e) => emit(PopularMovieState.error(e)),
    );
  }
}
