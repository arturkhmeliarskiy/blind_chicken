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
    return SizedBox(
      height: 183,
      child: Column(
        children: [
          SizedBox(
            height: 153.84,
            child: Image.asset(
              'assets/images/$image.jpg',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          )
        ],
      ),
    );
  }
}
