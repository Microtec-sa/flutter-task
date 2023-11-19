import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

///Used for Character model
@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'backdrop_path', defaultValue: '/')
    required String backdropPath,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'overview') required String overview,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'poster_path', defaultValue: '/') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'video') required bool video,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Movie;

  ///Used to decode instances from json
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
