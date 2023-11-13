import 'dart:async';

import 'package:dio/dio.dart';

import '../../../Features/Movie/data/models/movie_model.dart';
import '../constants.dart';

class MoviesService {
  final Dio dio = Dio();

  Future<List<MovieModel?>?> getMovie({required String movieTitle}) async {
    List<MovieModel> movies = [];

    try {
      final response = await dio.get(
        Constants.moviesUrl,
        queryParameters: {
          'query': movieTitle,
          'include_adult': 'false',
        },
        options: Options(
          headers: {
            'accept': 'application/json',
            'Authorization': "Bearer ${Constants.apiReadAccessToken}",
          },
        ),
      );

      if (response.statusCode == 200) {
        if (response.data['results'] != null) {
          movies.clear();
          response.data['results'].forEach((value) {
            movies.add(MovieModel.fromjson(value));
          });
          return movies;
        } else {
          throw Exception(response.statusMessage);
        }
      }
      return [];
    } catch (e) {
      if (e is DioException) {
        throw Exception('Internet Connection Failed');
      } else {
        throw Exception('Error: $e');
      }
    }
  }
}
