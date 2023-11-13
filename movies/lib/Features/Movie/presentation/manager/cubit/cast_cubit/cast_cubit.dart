import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Features/Movie/data/repos/cast_repo/cast_repo.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/cast_cubit/cast_state.dart';

class CastCubit extends Cubit<CastState> {
  CastCubit(this.castRepo) : super(CastInitial());
  CastRepo castRepo;
  void getCast({required int id}) async {
    emit(CastLoading());
    var cast = await castRepo.getCast(movieId: id);

    cast.fold(
      (l) => emit(CastFailed(errorMessage: l.errorMessage)),
      (r) => emit(
        CastSuccess(cast: r!),
      ),
    );
  }
}
