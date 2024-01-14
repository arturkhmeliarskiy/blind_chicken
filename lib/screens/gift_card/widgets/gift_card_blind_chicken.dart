import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GiftCardBlindChicken extends StatelessWidget {
  const GiftCardBlindChicken({
    super.key,
    required this.selectedColor,
  });

  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 186,
            margin: const EdgeInsets.only(
              left: 35,
              right: 35,
            ),
            decoration: BoxDecoration(
              color: selectedColor,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
              ),
              child: SvgPicture.asset(
                'assets/icons/logo_gift_card.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
