import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/cast_cubit/cast_cubit.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/movie_cubit/movie_cubit.dart';
import 'package:movies/Features/Movie/presentation/screens/search_screen.dart';
import 'package:movies/core/utils/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GitIt.initGitIt();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (BuildContext context) => GetIt.instance<MoviesCubit>(),
      ),
      BlocProvider(
        create: (BuildContext context) => GetIt.instance<CastCubit>(),
      ),
    ],
    child: const MovieApp(),
  ));
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(500, 712),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SearchScreen(),
      ),
    );
  }
}
