import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/cast.dart';
import '../../../data/repository/credit_repository.dart';

part 'cast_state.dart';
part 'cast_event.dart';
part 'cast_bloc.freezed.dart';

class CastBloc extends Bloc<CastEvent, CastState> {
  CastBloc() : super(const CastState.castInitial()) {
    on<CastFetch>((event, emit) async => _fetch(emit, event));
  }

  Future<void> _fetch(Emitter<CastState> emit, CastFetch event) async {
    final creditsRepository = CreditsRepository();
    try {
      emit(const _CastLoadInProgress());
      final response = await creditsRepository.getCredits(event.movieId);
      emit(_CastFetched(response));
    } catch (e) {
      emit(_CastFaild(e.toString()));
    }
  }
}
