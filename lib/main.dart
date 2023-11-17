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
        scaffoldBackgroundColor: AppColors.darkerBgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkerBgColor.withOpacity(0.5),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.darkerBgColor.withOpacity(0.5),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: AppColors.primaryColor,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primaryColor,
          selectionColor: AppColors.primaryColor.withOpacity(0.4),
          selectionHandleColor: AppColors.primaryColor,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: AppColors.darkerBgColor,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: AppColors.darkerBgColor,
              width: 2,
            ),
          ),
          filled: true,
          fillColor: AppColors.bgColor,
          hintStyle: TextStyle(color: AppColors.secondaryTextColor),
          prefixIconColor: AppColors.brighterBgColor,
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
