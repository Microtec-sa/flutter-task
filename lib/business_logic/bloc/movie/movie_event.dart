part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  /// Used to fetch data from discover api
  const factory MovieEvent.movieFetch() = Fetch;

  /// Used to fetch next page of data from discover api
  const factory MovieEvent.movieFetchMore() = FetchMore;

  /// Reload data from the begining (page_count = 0)
  const factory MovieEvent.movieRefresh() = Refresh;

  /// Fetch data based on a title keyword from search api
  const factory MovieEvent.movieSearch() = Search;

  /// Fetch next page of data based on a title keyword from search api
  const factory MovieEvent.movieSearchMore() = SearchMore;
}
