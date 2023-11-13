import 'package:dartz/dartz.dart';
import 'package:movies/Features/Movie/data/models/cast_model.dart';
import 'package:movies/Features/Movie/data/repos/cast_repo/cast_repo.dart';
import 'package:movies/core/errors/failures.dart';
import 'package:movies/core/utils/services/cast_service.dart';

class CastRepoImpl extends CastRepo {
  final CastService castService;

  CastRepoImpl({
    required this.castService,
  });

  @override
  Future<Either<Failure, List<CastModel?>?>> getCast(
      {required int movieId}) async {
    try {
      List<CastModel?>? result = await castService.getCast(movieId: movieId);

      return right(result);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
