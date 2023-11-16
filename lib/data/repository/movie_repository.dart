import 'package:movies_app/data/models/movie.dart';
import 'package:movies_app/data/web_services/web_serviece.dart';

import '../../constants/helper.dart';

///Responsible for getting Movies from json responce
class MoviesRepository {
  ///Web service responsible for caling api

  /// Returns all Movies data decoded from Responce
  Future<List<Movie>> getMovies() async {
    final moviesWebServices = WebService();
    final response = await moviesWebServices.getRequest('/discover/movie');
    Log.debug(response);
    final movies = (response.data['results'] as List);
    Log.debug('1222222222222222');
    final moviesList = movies.map((m) => Movie.fromJson(m)).toList();

    Log.debug("ASdkjahsdkjahsdkjhakdjahkjdhakj1111111111111111");

    return moviesList;
  }
}
