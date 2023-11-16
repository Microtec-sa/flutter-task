import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/app_router.dart';
import 'package:movies_app/business_logic/bloc_observer.dart';
import 'package:movies_app/constants/colors.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}

///The route widget of the app
class MyApp extends StatelessWidget {
  ///Construct and attch as a root widget to the widget tree
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.bgColor2,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.bgColor2.withOpacity(0.5),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.bgColor2.withOpacity(0.5),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: AppColors.primaryColor,
        ),
        fontFamily: 'Orbitron',
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
