import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:flutter/services.dart';

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.aspectRatio,
    required this.padding,
    required this.width,
  });

  final double width;
  final Uint8List? image;
  final double aspectRatio;
  final String title;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (image != null && image != Uint8List(0)) {
          return Container(
            padding: padding,
            width: width,
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 1.0),
                curve: Curves.ease,
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, double opacity, Widget? child) {
                  return Opacity(
                    opacity: opacity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.memory(
                          image ?? Uint8List(0),
                          fit: BoxFit.contain,
                          gaplessPlayback: true,
                        ),
                        Container(
                          height: 35,
                          color: BlindChickenColors.backgroundColor.withOpacity(0.8),
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return AspectRatio(
            aspectRatio: aspectRatio,
            child: Container(
              decoration: BoxDecoration(
                color: BlindChickenColors.borderBottomColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
        }
      },
    );
  }
}
