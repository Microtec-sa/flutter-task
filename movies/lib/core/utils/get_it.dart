import 'package:get_it/get_it.dart';
import 'package:movies/Features/Movie/data/repos/cast_repo/cast_repo.dart';
import 'package:movies/Features/Movie/data/repos/cast_repo/cast_repo_impl.dart';
import 'package:movies/Features/Movie/data/repos/movie_repo/movie_repo.dart';
import 'package:movies/Features/Movie/data/repos/movie_repo/movie_repo_impl.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/cast_cubit/cast_cubit.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/movie_cubit/movie_cubit.dart';
import 'package:movies/core/utils/services/cast_service.dart';
import 'package:movies/core/utils/services/movies_service.dart';

class GitIt {
  static final GetIt instance = GetIt.I..allowReassignment = true;

  static void initGitIt() {
    instance
        .registerFactory<MoviesCubit>(() => MoviesCubit(instance<MovieRepo>()));

    instance.registerLazySingleton<MovieRepo>(
        () => MovieRepoImpl(moviesService: instance<MoviesService>()));

    instance.registerLazySingleton<MoviesService>(() => MoviesService());

    instance.registerFactory<CastCubit>(() => CastCubit(instance<CastRepo>()));

    instance.registerLazySingleton<CastRepo>(
        () => CastRepoImpl(castService: instance<CastService>()));

    instance.registerLazySingleton<CastService>(() => CastService());
  }
}
