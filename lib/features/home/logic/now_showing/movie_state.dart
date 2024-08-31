import 'package:group5_project/core/network/api_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_state.freezed.dart';

@freezed
abstract class NowMovieState<T> with _$NowMovieState<T> {
  factory NowMovieState.initial() = NowShowingInitial;

  factory NowMovieState.loading() = NowShowingLoading;

  factory NowMovieState.loaded(T data) = NowShowingLoaded<T>;

  factory NowMovieState.error(ApiException error) = NowShowingError;
}
