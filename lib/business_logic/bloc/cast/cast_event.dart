part of 'cast_bloc.dart';

@freezed
class CastEvent with _$CastEvent {
  /// Used to fetch data from credits api
  const factory CastEvent.castFetch(int movieId) = CastFetch;
}
