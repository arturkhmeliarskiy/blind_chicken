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
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(10.5),
        child: ElevatedButton(
          onPressed: onOpen,
          style: ElevatedButton.styleFrom(
            backgroundColor: BlindChickenColors.activeBorderTextField,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // <-- Radius
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Показать $countProducts тваров',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: BlindChickenColors.backgroundColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
