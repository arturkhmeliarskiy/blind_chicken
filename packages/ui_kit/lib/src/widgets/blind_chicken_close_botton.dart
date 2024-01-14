import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenCloseButton extends StatelessWidget {
  const BlindChickenCloseButton({super.key, required this.onClose});

  final VoidCallback onClose;

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
          onPressed: onClose,
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
                'Закрыть',
                style: Theme.of(context).textTheme.headline2?.copyWith(
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
