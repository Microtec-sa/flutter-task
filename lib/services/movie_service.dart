//Packages
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:mostafa_gamil/models/movieCredit.dart';

//Services
import '../services/http_service.dart';

//Models
import '../models/movie.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;

  late HTTPService _http;

  MovieService() {
    _http = getIt.get<HTTPService>();
  }

  Future<List<Movie>?> getPopularMovies({int? page}) async {
    Response? _response = await _http.get('/movie/popular', query: {
      'page': page,
    });
    if (_response!.statusCode == 200) {
      Map _data = _response.data;
      List<Movie>? _movies = _data['results'].map<Movie>((_movieData) {
        return Movie.fromJson(_movieData);
      }).toList();
      return _movies;
    } else {
      throw Exception('Couldn\'t load popular movies.');
    }
  }

  Future<List<Movie>?> getUpcomingMovies({int? page}) async {
    Response? _response = await _http.get('/movie/upcoming', query: {
      'page': page,
    });
    if (_response!.statusCode == 200) {
      Map _data = _response.data;
      List<Movie>? _movies = _data['results'].map<Movie>((_movieData) {
        return Movie.fromJson(_movieData);
      }).toList();
      return _movies;
    } else {
      throw Exception('Couldn\'t load upcoming movies.');
    }
  }

  Future<MovieCredits?> getMovieCredits(int movieId, String accessToken) async {
  try {
    Response? response = await _http.get('/movie/$movieId/credits', accessToken: accessToken);

      if (response!.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        final MovieCredits credits = MovieCredits.fromJson(data);
        return credits;
      } else {
        throw Exception('Failed to load movie credits. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load movie credits: $e');
    }
  }

  // Add a method to set the access token
  void setAccessToken(String accessToken) {
    _http.setAccessToken(accessToken);
  }

  Future<List<Movie>?> searchMovies(String? _seachTerm, {required int page}) async {
    Response? _response = await _http.get('/search/movie', query: {
      'query': _seachTerm,
      'page': page,
    });
    if (_response!.statusCode == 200) {
      Map _data = _response.data;
      List<Movie>? _movies = _data['results'].map<Movie>((_movieData) {
        return Movie.fromJson(_movieData);
      }).toList();
      return _movies;
    } else {
      throw Exception('Couldn\'t perform movies search.');
    }
  }
}
