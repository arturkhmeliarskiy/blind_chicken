import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.padding,
    required this.width,
  });

  final double width;
  final String image;
  final String title;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/$image.jpg',
            fit: BoxFit.contain,
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
  }
}
