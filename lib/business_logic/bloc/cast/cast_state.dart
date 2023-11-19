part of 'cast_bloc.dart';

@freezed
class CastState with _$CastState {
  /// Initial state means the load data just opend
  const factory CastState.castInitial() = _CastInitial;

  /// LoadInProgress state means the app loading data from api
  const factory CastState.loadInProgress() = _CastLoadInProgress;

  /// Fetched state means the app finished fetching data from api
  const factory CastState.castFetched(
    List<Cast> cast,
  ) = _CastFetched;

  /// Faild state means the app faild fetching data from api
  const factory CastState.castFaild(String message) = _CastFaild;
}
