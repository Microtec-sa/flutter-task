import 'package:flutter/material.dart';

import 'constants/colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
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
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.darkerBgColor,
      elevation: 0,
      width: 220,
    ),
    listTileTheme: const ListTileThemeData(
      selectedTileColor: AppColors.primaryColor,
      iconColor: Colors.white70,
      selectedColor: Colors.white,
    ),
    navigationRailTheme: NavigationRailThemeData(
      elevation: 0,
      useIndicator: true,
      backgroundColor: AppColors.darkerBgColor.withOpacity(0.5),
      labelType: NavigationRailLabelType.selected,
      selectedLabelTextStyle: const TextStyle(
        color: Colors.white70,
        fontSize: 15,
      ),
      selectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
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
  );
}
