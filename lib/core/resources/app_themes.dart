import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:pimmer_app/app/resources/app_colors.dart';

import 'app_text_styles.dart';

class FlexCustomAppTheme {
  static final ThemeData light = FlexThemeData.light(
    scheme: FlexScheme.materialBaseline,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    subThemesData: FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
      useTextTheme: true,
      inputDecoratorFillColor: AppColors.white,
      inputDecoratorBorderType: FlexInputBorderType.underline,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    transparentStatusBar: false,
    primary: AppColors.primary,
    textTheme: textTheme,
  );

  static final ThemeData dark = light;

  //static final ThemeData dark = FlexThemeData.dark(
  //  scheme: FlexScheme.indigo,
  //  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  //  blendLevel: 15,
  //  transparentStatusBar: false,
  //  //appBarStyle: FlexAppBarStyle.background,
  //  appBarOpacity: 0.90,
  //  subThemesData: const FlexSubThemesData(
  //    blendOnLevel: 30,
  //  ),
  //  //useMaterial3:true,
  //  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //  fontFamily: GoogleFonts.montserrat().fontFamily,
  //  primary: const Color(0xFF7B46AC),
  //);

  static final TextTheme textTheme = TextTheme(
    displayLarge: AppTextStyles.displayLarge(),
    displayMedium: AppTextStyles.displayMedium(),
    displaySmall: AppTextStyles.displaySmall(),
    headlineLarge: AppTextStyles.headlineSmall(),
    headlineMedium: AppTextStyles.headlineMedium(),
    headlineSmall: AppTextStyles.headlineSmall(),
    titleLarge: AppTextStyles.titleLarge(),
    titleMedium: AppTextStyles.titleMedium(),
    titleSmall: AppTextStyles.titleSmall(),
    bodyLarge: AppTextStyles.bodyLarge(),
    bodyMedium: AppTextStyles.bodyMedium(),
    bodySmall: AppTextStyles.bodySmall(),
    labelLarge: AppTextStyles.labelLarge(),
    labelMedium: AppTextStyles.labelMedium(),
    labelSmall: AppTextStyles.labelSmall(),
  );
}

/*
class AppThemes {
  static final ThemeData light = ThemeData(
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(color: AppColors.primary),
    cupertinoOverrideTheme: const CupertinoThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
    ),
    scaffoldBackgroundColor: AppColors.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.secondary,
      selectionColor: AppColors.secondary,
      selectionHandleColor: AppColors.secondary,
    ),
    textTheme: textTheme,
    indicatorColor: AppColors.secondary,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryContainer,
      onPrimaryContainer: AppColors.onPrimaryContainer,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      secondaryContainer: AppColors.secondaryContainer,
      onSecondaryContainer: AppColors.onSecondaryContainer,
      error: AppColors.error,
      onError: AppColors.onError,
      errorContainer: AppColors.errorContainer,
      onErrorContainer: AppColors.onErrorContainer,
      background: AppColors.background,
      onBackground: AppColors.onBackgroundPrimary,
      surface: AppColors.surface,
      onSurface: AppColors.onSurfacePrimary,
      outline: AppColors.outline,
      surfaceVariant: AppColors.surfaceVariant,
      onSurfaceVariant: AppColors.onSurfaceVariant,
    ).copyWith(background: AppColors.background),
  );

  static final TextTheme textTheme = TextTheme(
    displayLarge: AppTextStyles.displayLarge(),
    displayMedium: AppTextStyles.displayMedium(),
    displaySmall: AppTextStyles.displaySmall(),
    headlineLarge: AppTextStyles.headlineSmall(),
    headlineMedium: AppTextStyles.headlineMedium(),
    headlineSmall: AppTextStyles.headlineSmall(),
    titleLarge: AppTextStyles.titleLarge(),
    titleMedium: AppTextStyles.titleMedium(),
    titleSmall: AppTextStyles.titleSmall(),
    bodyLarge: AppTextStyles.bodyLarge(),
    bodyMedium: AppTextStyles.bodyMedium(),
    bodySmall: AppTextStyles.bodySmall(),
    labelLarge: AppTextStyles.labelLarge(),
    labelMedium: AppTextStyles.labelMedium(),
    labelSmall: AppTextStyles.labelSmall(),
  );
}
*/
