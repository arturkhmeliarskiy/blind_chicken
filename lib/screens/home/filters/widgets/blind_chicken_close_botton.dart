import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenFilterButton extends StatelessWidget {
  const BlindChickenFilterButton({
    super.key,
    required this.onOpen,
    required this.countProducts,
  });

  final VoidCallback onOpen;
  final String countProducts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOpen,
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          color: BlindChickenColors.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: BlindChickenColors.activeBorderTextField.withOpacity(
                0.1,
              ),
              blurRadius: 4,
              offset: const Offset(0, -5), // Shadow position
            ),
          ],
        ),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.5),
          decoration: BoxDecoration(
            color: BlindChickenColors.activeBorderTextField,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'Показать $countProducts товаров',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: BlindChickenColors.backgroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
