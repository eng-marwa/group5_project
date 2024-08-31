import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  List<Result> results = [];

  MovieResponse(this.results);

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'vote_average')
  double? voteAverage;

  @JsonKey(name: 'genre_ids')
  List<int> genreIds = [];

  Result(this.backdropPath, this.originalTitle, this.overview, this.posterPath,
      this.releaseDate, this.voteAverage, this.genreIds);

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
