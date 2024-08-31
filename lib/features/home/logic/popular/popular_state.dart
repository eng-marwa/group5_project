import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/api_exception.dart';
part 'popular_state.freezed.dart';

@freezed
abstract class PopularMovieState<T> with _$PopularMovieState<T> {
  factory PopularMovieState.initial() = PopularMovieInitial;

  factory PopularMovieState.loading() = PopularMovieLoading;

  factory PopularMovieState.loaded(T data) = PopularMovieLoaded<T>;

  factory PopularMovieState.error(ApiException error) = PopularMovieError;
}
