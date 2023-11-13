import 'package:dartz/dartz.dart';
import 'package:movies/Features/Movie/data/models/movie_model.dart';
import 'package:movies/core/errors/failures.dart';

abstract class MovieRepo {
  Future<Either<Failure, List<MovieModel?>?>> getMovie(
      {required String movieTitle});
}
