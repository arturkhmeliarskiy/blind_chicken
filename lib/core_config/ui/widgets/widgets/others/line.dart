import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key, this.lineHeight, this.color, this.horizontalPadding});

  final double? lineHeight;
  final Color? color;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    if (horizontalPadding != null) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
        child: Container(
          width: double.infinity,
          height: lineHeight ?? 1.5,
          decoration: BoxDecoration(
            color: color ?? AppColors.greyEA,
          ),
        ),
      );
    }
    return Container(
      width: double.infinity,
      height: lineHeight ?? 1.5,
      decoration: BoxDecoration(
        color: color ?? AppColors.greyEA,
      ),
    );
  }
}
