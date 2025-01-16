import 'package:flutter/material.dart';
import 'package:pimmer_app/app/resources/app_colors.dart';

class AppShadows {
  static BoxShadow icon = BoxShadow(
    color: AppColors.shadowClearBlack6,
    blurRadius: 16,
    offset: const Offset(6, 6),
  );

  static BoxShadow card = BoxShadow(
    color: AppColors.shadowClearBlack6,
    blurRadius: 20,
    offset: const Offset(8, 8),
  );
  static BoxShadow cardLeafRight = BoxShadow(
    color: AppColors.clearBlack.withOpacity(0.04),
    blurRadius: 20,
    offset: const Offset(6, 0),
  );
  static BoxShadow orderStatus = BoxShadow(
    color: AppColors.shadowClearBlack12,
    blurRadius: 4,
    offset: const Offset(4, 4),
  );

  /// ******* Bottom sheet ******

  static BoxShadow bottomSheetBlur20 = BoxShadow(
    color: AppColors.shadowClearBlack4,
    blurRadius: 20,
    offset: const Offset(6, 6),
  );
  static BoxShadow bottomSheetBlur25 = BoxShadow(
    color: AppColors.shadowClearBlack12,
    blurRadius: 25,
    offset: const Offset(0, 8),
  );

  static BoxShadow tabbar = BoxShadow(
    color: AppColors.shadowClearBlack8,
    blurRadius: 30,
    offset: const Offset(-8, -8),
  );

  /// ******* Bottom card ******

  static BoxShadow bottomCardBlur16 = const BoxShadow(
    color: Color.fromRGBO(37, 38, 40, 0.12),
    blurRadius: 16,
  );

  /// ******* Popup sheet ******

  static BoxShadow popupBlur15 = BoxShadow(
    color: AppColors.shadowClearBlack20,
    blurRadius: 15,
    offset: const Offset(0, 11),
  );
  static BoxShadow popupBlur10 = BoxShadow(
    color: AppColors.shadowClearBlack20,
    blurRadius: 10,
    offset: const Offset(0, 11),
  );
  static BoxShadow popupBlur38 = BoxShadow(
    color: AppColors.shadowClearBlack14,
    blurRadius: 38,
    offset: const Offset(0, 24),
  );
  static BoxShadow popupBlur46 = BoxShadow(
    color: AppColors.shadowClearBlack12,
    blurRadius: 46,
    offset: const Offset(0, 9),
  );

  /// ******* Toggle sheet ******

  static BoxShadow toggleIosBlur1 = BoxShadow(
    color: AppColors.shadowClearBlack15,
    blurRadius: 1,
    offset: const Offset(0, 3),
  );
  static BoxShadow toggleIosBlur8 = BoxShadow(
    color: AppColors.shadowClearBlack6,
    blurRadius: 8,
    offset: const Offset(0, 3),
  );
  static BoxShadow toggleAndroidBlur3 = BoxShadow(
    color: AppColors.shadowClearBlack20,
    blurRadius: 3,
    offset: const Offset(0, 1),
  );
  static BoxShadow toggleAndroidBlur1 = BoxShadow(
    color: AppColors.shadowClearBlack12,
    blurRadius: 1,
    offset: const Offset(0, 2),
  );

  static BoxShadow stepCard = BoxShadow(
    color: AppColors.shadowClearBlack12,
    blurRadius: 25,
    offset: const Offset(0, 25),
  );
}
