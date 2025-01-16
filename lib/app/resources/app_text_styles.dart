import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/utils/figma_dimention.dart';
import 'package:flutter/material.dart';


class AppTextStyles {
  /// Display
  static TextStyle _create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    double? height,
    double? absoluteHeight,
    double? letterSpacing,
    TextDecoration decoration = TextDecoration.none,
    String? fontFamily = 'Roboto',
  }) {
    color ??= AppColors.lightText;
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: absoluteHeight ?? (height ?? fontSize) / fontSize,
      letterSpacing: letterSpacing,
      decoration: decoration,
      fontFamily: fontFamily,
    );
  }

  static String fontFamily = 'SF Pro Display';

  static TextStyle displayLarge([Color? color]) => TextStyle(
        fontSize: 56,
        height: 64 / 56,
        letterSpacing: 0,
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
      );

  static TextStyle displayMedium([Color? color]) => TextStyle(
        fontSize: 48,
        height: 56 / 48,
        letterSpacing: 0,
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
      );

  static TextStyle displaySmall([Color? color]) => TextStyle(
        fontSize: 40,
        height: 48 / 40,
        letterSpacing: 0,
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
      );

  /// Headline

  static TextStyle headlineLarge([Color? color]) => TextStyle(
        fontSize: 26,
        height: 36 / 30,
        letterSpacing: 0.25,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  static TextStyle headlineMedium([Color? color]) => TextStyle(
        fontSize: 23,
        height: 32 / 26,
        letterSpacing: 0.24,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  static TextStyle headlineSmall([Color? color]) => TextStyle(
        fontSize: 20,
        height: 28 / 20,
        letterSpacing: 0.15,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  /// Title

  static TextStyle titleLarge([Color? color]) => TextStyle(
        fontSize: 18,
        height: 24 / 18,
        letterSpacing: 0.15,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  static TextStyle titleMedium([Color? color]) => TextStyle(
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.15,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  static TextStyle titleSmall([Color? color]) => TextStyle(
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      );

  /// Body

  static TextStyle bodyLarge([Color? color]) => TextStyle(
        fontSize: 18,
        height: 24 / 18,
        letterSpacing: 0.15,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      );

  static TextStyle bodyMedium([Color? color]) => TextStyle(
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.15,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      );

  static TextStyle bodySmall([Color? color, FontWeight? fontWeight]) => TextStyle(
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
        color: color,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: fontFamily,
      );

  /// Label

  static TextStyle labelLarge([Color? color]) => TextStyle(
        fontSize: 13,
        height: 20 / 13,
        letterSpacing: 0.25,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      );

  static TextStyle labelMedium([Color? color]) => TextStyle(
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.25,
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      );

  static TextStyle labelSmall({Color? color, FontWeight? weight}) => TextStyle(
        fontSize: 10,
        height: 16 / 11,
        letterSpacing: 0.25,
        color: color,
        fontWeight: weight ?? FontWeight.w600,
        fontFamily: fontFamily,
      );

  ///here start transition styles
  static TextStyle textWithUnderline([Color? color]) => TextStyle(
        color: color,
        fontSize: 14,
        height: 16.8.toFigmaHeight(16.8),
        decoration: TextDecoration.underline,
        decorationColor: color,
      );

  static TextStyle tabItemTitleActive = tabItemTitleInactive.copyWith(
    color: AppColors.primary,
  );
  static TextStyle tabItemTitleInactive = _create(
    color: AppColors.black,
    height: 16,
    fontWeight: FontWeight.w500,

    /// 1.25px
    letterSpacing: 1.25,
  );

  static TextStyle inActiveTabText = _create(
    fontFamily: 'SF Pro Display',
    height: 16.8,

    /// 0.4%
    letterSpacing: 0.004,
    color: AppColors.greyEA,
  );

  static TextStyle chipPrimaryTitleActive = _create(
    color: AppColors.white,
    height: 16.8,
  );
  static TextStyle chipPrimaryTitleInactive = _create(
    color: AppColors.black,
    height: 16.8,
  );

  static TextStyle ordersEmptyOrdersPlaceholderHeaderAndroid = _create(
    height: 21.09,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle ordersEmptyOrdersPlaceholderDescriptionIos = _create(
    fontFamily: '.SF Pro Display',
    height: 18.02,
    fontWeight: FontWeight.w700,

    /// 0.01%
    letterSpacing: 0.01,
  );
  static TextStyle ordersEmptyOrdersPlaceholderHeaderIos = _create(
    fontFamily: '.SF Pro Display',
    height: 21.09,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle ordersEmptyOrdersPlaceholderDescriptionAndroid = _create(
    height: 18.2,

    /// 0.01%
    letterSpacing: 0.01,
  );
  static TextStyle productPropertyValue = _create(
    height: 14.06,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle cardDropSubtitle = _create(
    // height: 14,
    fontSize: 12,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle cardDropTitle = _create(
    color: AppColors.black,
    height: 16.41,
    fontWeight: FontWeight.w500,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle cardDropPriceCurrencyPrimary = _create(
    color: AppColors.primary,
    height: 9,
    fontSize: 10.8,
    fontWeight: FontWeight.w700,
  );
  static TextStyle cardDropOrderPriceCurrencyUnit = _create(
    color: AppColors.black,
    height: 11.72,
    fontSize: 10.8,
    fontWeight: FontWeight.w500,
  );
  static TextStyle cardDropOrderPriceThousands = _create(
    color: AppColors.black,
    height: 14,
    fontSize: 12,
    fontWeight: FontWeight.w500,

    /// 0.24%
    letterSpacing: 0.024,
  );
  static TextStyle orderEditButton = _create(
    fontFamily: 'SF Pro Display',
    fontSize: 12,
    height: 14.32,
    letterSpacing: 0.0024,
    color: AppColors.grey43,
  );
  static TextStyle chipDropPrimaryTitle = _create(
    color: AppColors.white,
    fontSize: 12,
    height: 14.06,
  );
  static TextStyle labelFieldLogo = _create(
    height: 15.6,
    color: AppColors.grey43,
    fontSize: 12,

    /// 4%
    letterSpacing: 0.04,
  );
  static TextStyle cardNumberOrPhoneNumberText = _create(
    fontFamily: 'SF Pro Display',
    fontSize: 16,

    ///
    height: 20.8,
    color: AppColors.black,
  );
  static TextStyle chipOrderPrimaryTitleActive = _create(
    color: AppColors.white,
    height: 14.06,
    fontSize: 12,
  );
  static TextStyle chipOrderPrimaryTitleInactive = _create(
    color: AppColors.black,
    height: 14.06,
    fontSize: 12,
  );

  /// text has white color
  static TextStyle buttonTitle = _create(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    height: 19,
    fontSize: 17,
  );
  static TextStyle buttonTitleBlack = buttonTitle.copyWith(color: AppColors.black);
  static TextStyle buttonTitleBlack12 = buttonTitleBlack.copyWith(fontSize: 12);
  static TextStyle buttonTitle12 = buttonTitle.copyWith(fontSize: 12);
  static TextStyle appBarTitleIosSearch = _create(
    fontFamily: '.SF Pro Display',
    color: AppColors.black,
    // 18.75
    height: 18.75,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: -1.0024,
  );
}
