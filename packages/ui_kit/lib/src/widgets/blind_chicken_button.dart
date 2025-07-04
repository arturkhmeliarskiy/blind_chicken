import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenButton extends StatelessWidget {
  const BlindChickenButton({
    super.key,
    required this.title,
    this.height = 44,
    this.width = double.infinity,
    required this.onChenge,
  });

  final String title;
  final double height;
  final double width;
  final VoidCallback onChenge;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChenge,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: BlindChickenColors.activeBorderTextField,
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: BlindChickenColors.backgroundColorItemFilter,
                  height: 1,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
