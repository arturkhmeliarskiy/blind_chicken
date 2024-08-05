import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenTitleButton extends StatelessWidget {
  const BlindChickenTitleButton({
    super.key,
    required this.onChange,
    required this.title,
    this.isLoad = false,
  });

  final VoidCallback onChange;
  final String title;
  final bool isLoad;

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
          onPressed: onChange,
          style: ElevatedButton.styleFrom(
            backgroundColor: BlindChickenColors.activeBorderTextField,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // <-- Radius
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isLoad)
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: BlindChickenColors.backgroundColor,
                      ),
                )
              else
                Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    color: BlindChickenColors.backgroundColor,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
