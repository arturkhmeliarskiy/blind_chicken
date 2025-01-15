import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class LoadingImage extends StatefulWidget {
  const LoadingImage({super.key});

  @override
  State<LoadingImage> createState() => _LoadingImageState();
}

class _LoadingImageState extends State<LoadingImage> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> alpha;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      animationBehavior: AnimationBehavior.preserve,
    );

    alpha = Tween<double>(begin: 1.0, end: 0.3).animate(controller);

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: alpha,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: BlindChickenColors.borderTextField,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: BlindChickenColors.borderTextField,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: BlindChickenColors.borderTextField,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
