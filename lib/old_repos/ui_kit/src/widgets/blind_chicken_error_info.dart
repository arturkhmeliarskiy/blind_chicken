import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BlindChickenErrorInfo extends StatelessWidget {
  const BlindChickenErrorInfo({
    super.key,
    required this.errorMessage,
    required this.onRepeatRequest,
  });

  final String errorMessage;
  final VoidCallback onRepeatRequest;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: onRepeatRequest,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: BlindChickenColors.activeBorderTextField,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 30,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Повторить',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: BlindChickenColors.backgroundColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
