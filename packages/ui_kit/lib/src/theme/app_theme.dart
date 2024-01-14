import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppTheme {
  const AppTheme._();

  static final primarySwatch = const MaterialColor(
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
    primarySwatch: primarySwatch,
    splashColor: Colors.white,
    highlightColor: Colors.white,
    primaryColor: Colors.white,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 15.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headline2: TextStyle(
        fontSize: 14.0,
        color: BlindChickenColors.activeBorderTextField,
        height: 1.5,
      ),
      headline3: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headline4: TextStyle(
        fontSize: 16.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 32.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      headline6: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      bodyText1: TextStyle(
        fontSize: 10.5,
        color: BlindChickenColors.activeBorderTextField,
      ),
      bodyText2: TextStyle(
        fontSize: 12.6,
        fontWeight: FontWeight.w400,
        color: BlindChickenColors.activeBorderTextField,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: BlindChickenColors.activeBorderTextField,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 17.5,
        color: BlindChickenColors.activeBorderTextField,
        height: 1,
      ),
      button: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}
