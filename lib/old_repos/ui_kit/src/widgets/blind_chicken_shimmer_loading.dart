import 'package:flutter/material.dart';

class BlindChickenShimmerLoading extends StatefulWidget {
  const BlindChickenShimmerLoading({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  State<BlindChickenShimmerLoading> createState() => _BlindChickenShimmerLoadingState();
}

class _BlindChickenShimmerLoadingState extends State<BlindChickenShimmerLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      animationBehavior: AnimationBehavior.preserve,
    );

    _animation = Tween(begin: 0.0, end: 2.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isLoading) {
      return widget.child;
    }

    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [
            Color.fromARGB(216, 180, 180, 180),
            Color(0xFFF4F4F4),
            Color.fromARGB(255, 143, 143, 147),
          ],
          stops: [
            _animation.value - 0.1,
            0.3,
            0.4,
          ],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: widget.child,
    );
  }
}
