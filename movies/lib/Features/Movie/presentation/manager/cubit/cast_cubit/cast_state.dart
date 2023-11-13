import 'package:movies/Features/Movie/data/models/cast_model.dart';

abstract class CastState {}

class CastInitial extends CastState {}

class CastLoading extends CastState {}

class CastSuccess extends CastState {
  final List<CastModel?>? cast;

  CastSuccess({required this.cast});
}

class CastFailed extends CastState {
  final String errorMessage;

  CastFailed({required this.errorMessage});
}
