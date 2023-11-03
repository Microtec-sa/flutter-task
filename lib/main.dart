import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/cubit/cast_cubit.dart';
import 'package:movies/cubit/movie_cubit.dart';
import 'package:movies/screens/splash_screen.dart';
import 'package:movies/services/cast_service.dart';
import 'package:movies/services/movie_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp( MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (BuildContext context) {
            return MoviesCubit(MovieService());
          },
      ),
      BlocProvider(
          create: (BuildContext context) {
            return CastCubit(CastService());
          },
      ),
    ], child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movies',
        home: SplashScreen(),

      ),
    );
  }
}

