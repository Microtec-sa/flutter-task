import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/business_logic/bloc/movie/movie_bloc.dart';
import 'package:movies_app/business_logic/cubit/home_tab_index_cubit.dart';
import 'package:movies_app/constants/stings.dart';

import 'presentation/screens/home_screen/home_screen.dart';
import 'presentation/screens/movies_screen/movies_screen.dart';

///Used to manage routes in the app
class AppRouter {
  ///AppRouter to handle navigation around the app
  /* AppRouter() {
    MovieBloc = MovieBloc();
  }

  ///Used to expose [MovieBloc] and inject it in the widget tree
  late MovieBloc MovieBloc;
*/
  ///Used to generate routs
  Route<MaterialPageRoute<void>> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ConstantStrings.moviesScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => MovieBloc()..add(const Fetch()),
              ),
              BlocProvider(
                create: (context) => HomeTabIndexCubit(),
              ),
            ],
            child: const HomeScreen(),
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => const MoviesScreen());
    }
  }
}
