part of 'home_tab_index_cubit.dart';

/// Responsilbe for listing all states for HomeTabIndex
@freezed
class HomeTabIndexState with _$HomeTabIndexState {
  /// Initial state of the nav bar
  const factory HomeTabIndexState.initial(int tabIndex) = _Initial;

  /// tab Change means the user pressed on new tab
  const factory HomeTabIndexState.tabChange(int tabIndex) = _TabChange;
}
