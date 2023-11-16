part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  ///Used to fetch data from [CharactersRepository]
  const factory MovieEvent.movieFetch() = Fetch;

  ///Fetch more data from api given next page url
  const factory MovieEvent.movieFetchMore() = FetchMore;
}
