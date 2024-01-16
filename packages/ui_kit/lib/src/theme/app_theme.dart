import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppTheme {
  const AppTheme._();

  static const primarySwatch = MaterialColor(
    0xFF000000,
    {
      50: BlindChickenColors.activeBorderTextField,
      100: BlindChickenColors.activeBorderTextField,
      200: BlindChickenColors.activeBorderTextField,
      300: BlindChickenColors.activeBorderTextField,
      400: BlindChickenColors.activeBorderTextField,
      500: BlindChickenColors.activeBorderTextField,
      600: BlindChickenColors.activeBorderTextField,
      700: BlindChickenColors.activeBorderTextField,
      800: BlindChickenColors.activeBorderTextField,
      900: BlindChickenColors.activeBorderTextField,
    },
  );

  static final light = ThemeData(
    splashColor: Colors.white,
    highlightColor: Colors.white,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 15.4,
        color: BlindChickenColors.activeBorderTextField,
      ),
      displayMedium: TextStyle(
        fontSize: 14.0,
        color: BlindChickenColors.activeBorderTextField,
        height: 1.5,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headlineMedium: TextStyle(
        fontSize: 16.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 32.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      bodyLarge: TextStyle(
        fontSize: 10.5,
        color: BlindChickenColors.activeBorderTextField,
      ),
      bodyMedium: TextStyle(
        fontSize: 12.6,
        fontWeight: FontWeight.w400,
        color: BlindChickenColors.activeBorderTextField,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 17.5,
        color: BlindChickenColors.activeBorderTextField,
        height: 1,
      ),
      labelLarge: TextStyle(
        fontSize: 11.2,
        color: BlindChickenColors.activeBorderTextField,
        fontWeight: FontWeight.w400,
      ),
    ),
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: primarySwatch).copyWith(background: Colors.white),
  );
}
