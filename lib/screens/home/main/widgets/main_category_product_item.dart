import 'package:flutter/material.dart';

class MainCategoryProductItem extends StatelessWidget {
  const MainCategoryProductItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: width / 3 - 21,
          height: (width / 3 - 21) * 4 / 3,
          child: Image.asset(
            'assets/images/$image.jpg',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        )
      ],
    );
  }
}
