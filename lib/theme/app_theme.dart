import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.white),
    useMaterial3: true,
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        titleSmall: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: AppColors.charcoal,
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: AppColors.white,
        )),
    cardTheme: CardTheme(color: AppColors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((state) {
          return AppColors.salmon;
        }),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.salmon,
      unselectedItemColor: AppColors.silverGrey,
      enableFeedback: true,
    ),
  );
}