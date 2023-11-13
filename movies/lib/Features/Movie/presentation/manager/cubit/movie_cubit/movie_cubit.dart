import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Features/Movie/data/repos/movie_repo/movie_repo.dart';

import 'movie_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit(this.movieRepo) : super(MoviesInitial());
  MovieRepo movieRepo;
  Future getMovies({required String title}) async {
    emit(MoviesLoading());
    var movies = await movieRepo.getMovie(movieTitle: title);

    movies.fold(
      (l) => emit(MoviesFailed(errorMessage: l.errorMessage)),
      (r) => emit(
        MoviesSuccess(movies: r!),
      ),
    );
  }
}
