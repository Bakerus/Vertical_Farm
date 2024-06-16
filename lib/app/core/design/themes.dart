import 'package:flutter/material.dart';
import 'package:vertical_farm/app/core/design/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Outfit',
    primaryColor: AppColors.greenSecondary,
    scaffoldBackgroundColor: AppColors.greenPrimay,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.greenSecondary,
      onPrimary: Colors.white,
      secondary: AppColors.yellowSecondary,
      onSecondary: Colors.white,
      error: AppColors.redError,
      onError: Colors.white,
      background: AppColors.greenSecondary,
      onBackground: Colors.white,
      surface: AppColors.greenPrimay,
      onSurface: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.yellowSecondary,
      ),
      bodyLarge: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.white),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 5),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.yellowSecondary),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
            ))),
  );
}
