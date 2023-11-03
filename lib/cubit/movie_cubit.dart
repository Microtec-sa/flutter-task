import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/cubit/movieState.dart';
import 'package:movies/movieModel/movie_model.dart';
import 'package:movies/services/movie_service.dart';

class MoviesCubit extends Cubit<MoviesState>{
  MoviesCubit(this.movieService) : super(MoviesInitial());
  MovieService movieService;
  List<MovieModel?>? movies;
  void getMovies({required String title}) async{
    try{
      emit(MoviesLoading());
      movies = await movieService.getMovie(movieTitle: title);
      emit(MoviesSuccess(movies: movies!));
    }on Exception catch(e){
      emit(MoviesFailed(exp:'$e'));
    }
  }
}