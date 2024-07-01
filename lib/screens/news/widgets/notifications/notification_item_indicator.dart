import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class NotificationItemIndicator extends StatefulWidget {
  const NotificationItemIndicator({super.key});

  @override
  State<NotificationItemIndicator> createState() => _NotificationItemIndicatorState();
}

class _NotificationItemIndicatorState extends State<NotificationItemIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2500),
  )..repeat();
  late final Animation<double> _scaleAnimation =
      Tween<double>(begin: 0, end: 1.2).animate(_controller);
  late final Animation<double> _fadeAnimation =
      Tween<double>(begin: 1, end: 0.2).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                width: 30 * 1.5,
                height: 30 * 1.5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: BlindChickenColors.borderTextField,
                ),
              ),
            ),
          ),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: BlindChickenColors.activeBorderTextField,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
