import 'package:dartz/dartz.dart';
import 'package:movies/Features/Movie/data/models/movie_model.dart';
import 'package:movies/Features/Movie/data/repos/movie_repo/movie_repo.dart';
import 'package:movies/core/errors/failures.dart';
import 'package:movies/core/utils/services/movies_service.dart';

class MovieRepoImpl extends MovieRepo {
  final MoviesService moviesService;

  MovieRepoImpl({
    required this.moviesService,
  });

  @override
  Future<Either<Failure, List<MovieModel?>?>> getMovie(
      {required String movieTitle}) async {
    try {
      List<MovieModel?>? result =
          await moviesService.getMovie(movieTitle: movieTitle);

      return right(result);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
