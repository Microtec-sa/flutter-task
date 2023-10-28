//Packages
import 'package:get_it/get_it.dart';
import 'package:mostafa_gamil/models/movieCredit.dart';

//Models
import '../models/app_config.dart';

class Movie {
  final int id;
  final String? name;
  final String? language;
  final bool? isAdult;
  final String? description;
  final String posterPath;
  final String? backdropPath;
  final num? rating;
  final String? releaseDate;
  final MovieCredits credits;

  Movie({
    required this.id,
    this.name,
    this.language,
    this.isAdult,
    this.description,
    required this.posterPath,
    this.backdropPath,
    this.rating,
    this.releaseDate,
    required this.credits,
  });

  factory Movie.fromJson(Map<String, dynamic> _json) {
  final Map<String, dynamic>? creditsData = _json['credits'] as Map<String, dynamic>?;

  final MovieCredits credits = creditsData != null
      ? MovieCredits.fromJson(creditsData)
      : MovieCredits(cast: [], crew: []); 

  return Movie(
    id: _json['id'],
    name: _json['title'],
    language: _json['original_language'],
    isAdult: _json['adult'],
    description: _json['overview'],
    posterPath: _json['poster_path'],
    backdropPath: _json['backdrop_path'],
    rating: _json['vote_average'],
    releaseDate: _json['release_date'],
    credits: credits,
  );
}


  String posterURL() {
    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_API_URL}${this.posterPath}';
  }
}

