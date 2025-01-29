import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenLoading extends StatefulWidget {
  const BlindChickenLoading({
    super.key,
    this.height = 0,
    this.width,
    this.borderRadius,
    this.margin,
  });

  final double height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;

  @override
  State<BlindChickenLoading> createState() => _BlindChickenLoadingState();
}

class _BlindChickenLoadingState extends State<BlindChickenLoading>
    with SingleTickerProviderStateMixin {
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

    alpha = Tween<double>(begin: 1.0, end: 0.1).animate(controller);

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
      child: Container(
        margin: widget.margin,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: BlindChickenColors.borderBottomColor,
        ),
        height: widget.height,
        width: widget.width,
        child: Container(
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }
}
