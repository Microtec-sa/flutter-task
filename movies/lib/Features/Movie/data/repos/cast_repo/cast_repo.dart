import 'package:dartz/dartz.dart';
import 'package:movies/Features/Movie/data/models/cast_model.dart';
import 'package:movies/core/errors/failures.dart';

abstract class CastRepo {
  Future<Either<Failure, List<CastModel?>?>> getCast({required int movieId});
}
