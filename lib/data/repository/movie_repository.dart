import 'package:movies_app/data/models/api_response.dart';
import 'package:movies_app/data/models/movie.dart';
import 'package:movies_app/data/web_services/web_serviece.dart';

import '../../constants/helper.dart';

///Responsible for getting Movies from json responce
class MoviesRepository {
  ///Web service responsible for caling api

  /// Returns all Movies data decoded from Responce
  Future<ApiResponse<List<Movie>>> getMovies(int pageCount) async {
    final moviesWebServices = WebService();
    final response =
        await moviesWebServices.getRequest('/discover/movie', queryParameters: {
      'include_video': 'false',
      'page': pageCount,
    });

    final movies = (response.data['results'] as List);
    final moviesList = movies.map((m) => Movie.fromJson(m)).toList();

    return ApiResponse(
      data: moviesList,
      page: response.data['page'],
      totalPage: response.data['total_pages'],
    );
  }

  /// Returns Movies data based on title query decoded from Responce
  Future<ApiResponse<List<Movie>>> seaechMoviesByQuary(
      int pageCount, String query) async {
    final moviesWebServices = WebService();
    final response =
        await moviesWebServices.getRequest('/search/movie', queryParameters: {
      'include_video': 'false',
      'page': pageCount,
      'query': query,
    });
    Log.debug(response);
    final movies = (response.data['results'] as List);
    final moviesList = movies.map((m) => Movie.fromJson(m)).toList();
    return ApiResponse(
      data: moviesList,
      page: response.data['page'],
      totalPage: response.data['total_pages'],
    );
  }
}
