import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_tab_index_state.dart';
part 'home_tab_index_cubit.freezed.dart';

/// Tab index for home nav bar
class HomeTabIndexCubit extends Cubit<HomeTabIndexState> {
  /// Cubit constructor with initial tab index = 0
  HomeTabIndexCubit() : super(const HomeTabIndexState.initial(0));

  /// Change tab index
  void changeTab(int tabIndex) {
    emit(_TabChange(tabIndex));
  }
}
