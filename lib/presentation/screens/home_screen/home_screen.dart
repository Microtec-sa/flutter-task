import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/screens/movies_screen/movies_screen.dart';

import '../../../business_logic/cubit/home_tab_index_cubit.dart';
import '../../../constants/colors.dart';

/// List of screens which the nav bar will be used to navigate between
List<Widget> screens = [
  const MoviesScreen(),
  const Text("data"),
];

/// List of screens which the nav bar will be used to navigate between
List<String> appBarTitle = [
  'Discover',
  'Search',
];

/// Home screens include the bottom nav bar
class HomeScreen extends StatelessWidget {
  /// Home screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabIndexCubit, HomeTabIndexState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: AppColors.darkerBgColor.withOpacity(0.7),
            elevation: 0,
            title: Text(
              appBarTitle[state.tabIndex],
            ),
          ),
          body: screens[state.tabIndex],
          bottomNavigationBar: NavigationBar(
            backgroundColor: AppColors.darkerBgColor.withOpacity(0.7),
            selectedIndex: state.tabIndex,
            onDestinationSelected: (value) =>
                context.read<HomeTabIndexCubit>().changeTab(value),
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.explore_rounded),
                label: 'Discover',
              ),
              NavigationDestination(
                icon: Icon(Icons.place),
                label: 'Search',
              ),
            ],
          ),
        );
      },
    );
  }
}
