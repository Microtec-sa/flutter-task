abstract class MoviesState {}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesSuccess extends MoviesState {
  final List movies;
  MoviesSuccess({required this.movies});
}

class MoviesFailed extends MoviesState {
  final String errorMessage;
  MoviesFailed({required this.errorMessage});
}
