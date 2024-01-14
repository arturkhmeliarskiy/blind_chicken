import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenCashbackAndDiscountsTitle extends StatelessWidget {
  const BlindChickenCashbackAndDiscountsTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: BlindChickenColors.backgroundColorItemFilter,
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/lightning.svg',
                height: 14,
                width: 14,
              ),
              const SizedBox(
                width: 7,
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                    title,
                    context,
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              SvgPicture.asset(
                'assets/icons/lightning.svg',
                height: 14,
                width: 14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
