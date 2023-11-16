part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  /// Initial state means the app just opend`
  const factory MovieState.movieInitial() = _Initial;

  /// LoadInProgress state means the app loading data from api
  const factory MovieState.movieLoadInProgress() = _LoadInProgress;

  /// Fetched state means the app finished fetching data from api
  const factory MovieState.movieFetched(
    List<Movie> apiResponse,
  ) = _Fetched;

  /// Faild state means the app faild fetching data from api
  const factory MovieState.movieFaild(String message) = _Faild;

  /// End Of List state means the we loaded all data from api
  /// and no more data to fetch
  const factory MovieState.movieEndOfList() = _EndOfList;
}
