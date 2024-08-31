import 'package:group5_project/core/network/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group5_project/features/home/model/movie_response.dart';

import '../../repository/movie_repository.dart';
import 'movie_state.dart';

class NowShowingCubit extends Cubit<NowMovieState> {
  final MovieRepository _movieRepository;

  NowShowingCubit(this._movieRepository) : super(NowMovieState.initial());

  Future<void> emitStates() async {
    emit(NowMovieState.loading());
    ApiResult<MovieResponse> apiResult =
        await _movieRepository.getRemoteNowShowingMovies();
    apiResult.when(
      success: (data) => emit(NowMovieState.loaded(data)),
      failure: (e) => emit(NowMovieState.error(e)),
    );
  }
}
