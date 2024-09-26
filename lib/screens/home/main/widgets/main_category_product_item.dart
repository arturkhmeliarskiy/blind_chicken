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
    int numberColumns = 3;
    if (width > 1023) {
      numberColumns = 6;
    }
    return Column(
      children: [
        SizedBox(
          width: width / numberColumns - 18,
          height: (width / numberColumns - 18) * 4 / 3,
          child: Image.asset(
            'assets/images/$image.jpg',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: width / numberColumns - 18,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
