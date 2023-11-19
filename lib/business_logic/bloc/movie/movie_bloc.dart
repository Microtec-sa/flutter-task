import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/data/models/movie.dart';
import 'package:movies_app/data/repository/movie_repository.dart';

part 'movie_state.dart';
part 'movie_event.dart';
part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const MovieState.movieInitial()) {
    on<Fetch>((event, emit) async => _fetch(emit));
    on<FetchMore>((event, emit) async => _fetchMore(emit));
    //on<Refresh>((event, emit) async => _refresh(emit));
    on<Search>((event, emit) async => _search(emit));
    on<SearchMore>((event, emit) async => _searchMore(emit));
  }

  /// Currently selected Movie by user to display more details
  Movie? currentlySelectedMovie;

  int _pageCount = 0;

  /// Current title query
  String query = '';

  Future<void> _fetch(Emitter<MovieState> emit) async {
    _pageCount = 1;
    final moviesRepository = MoviesRepository();
    try {
      emit(const _LoadInProgress());
      final response = await moviesRepository.getMovies(_pageCount);
      emit(_MovieFetched(response.data));
    } catch (e) {
      emit(_Faild(e.toString()));
    }
  }

  Future<void> _fetchMore(Emitter<MovieState> emit) async {
    _pageCount++;
    final moviesRepository = MoviesRepository();
    try {
      emit(_FetchMoreInProgress(moviesRepository.allMovies));
      final response = await moviesRepository.getMovies(_pageCount);
      if (response.page <= response.totalPage) {
        emit(_MovieFetched(response.data));
      } else {
        emit(_EndOfList(response.data));
      }
    } catch (e) {
      emit(_Faild(e.toString()));
    }
  }

  /*Future<void> _refresh(Emitter<MovieState> emit) async {
    _pageCount = 0;
    await _fetch(emit);
  }*/

  Future<void> _search(Emitter<MovieState> emit) async {
    _pageCount = 1;
    final moviesRepository = MoviesRepository();
    try {
      emit(const _LoadInProgress());
      final response =
          await moviesRepository.seaechMoviesByQuary(_pageCount, query);
      if (response.data.isNotEmpty) {
        emit(_MovieSearchFetched(response.data));
      } else {
        emit(const _Faild('No Data found match this keyword'));
      }
    } catch (e) {
      emit(_Faild(e.toString()));
    }
    return;
  }

  Future<void> _searchMore(Emitter<MovieState> emit) async {
    _pageCount++;
    final moviesRepository = MoviesRepository();
    try {
      emit(_FetchMoreInProgress(moviesRepository.allMovies));

      final response =
          await moviesRepository.seaechMoviesByQuary(_pageCount, query);
      if (response.page <= response.totalPage) {
        emit(_MovieSearchFetched(response.data));
      } else {
        emit(_EndOfList(response.data));
      }
    } catch (e) {
      emit(_Faild(e.toString()));
    }
    return;
  }
}
