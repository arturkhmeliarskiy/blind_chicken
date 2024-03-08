import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width * 3 / 4,
      margin: const EdgeInsets.only(
        left: 14,
        right: 14,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/$image.jpg',
          ),
          Container(
            height: 35,
            color: BlindChickenColors.backgroundColor.withOpacity(0.4),
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
