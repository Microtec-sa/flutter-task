import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/data/models/movie.dart';
import 'package:movies_app/data/repository/movie_repository.dart';

import '../../../constants/helper.dart';

part 'movie_state.dart';
part 'movie_event.dart';
part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const MovieState.movieInitial()) {
    on<Fetch>((event, emit) async => _fetch(emit));
    //on<FetchMore>((event, emit) async => _fetchMore(emit));
  }

  /// Currently selected Movie by user to display more details
  Movie? currentlySelectedMovie;

  Future<void> _fetch(Emitter<MovieState> emit) async {
    if (state is _EndOfList) {
      return;
    }
    try {
      emit(const _LoadInProgress());
      final moviesRepository = MoviesRepository();
      final movies = await moviesRepository.getMovies();
      Log.debug(movies);
      emit(_Fetched(movies));
    } catch (e) {
      emit(_Faild(
          '${e.toString()} Unable to load data \n Please check your network'));
    }
  }

  /*Future<void> _fetchMore(Emitter<MovieState> emit) async {
    if (_Fetched) {
      try {
        final MoviesRepository = MoviesRepository();
      } catch (e) {
        emit(const _Faild('Unable to load data \n Please check your network'));
      }
    } else {
      emit(const _EndOfList());
    }
  }*/
}
