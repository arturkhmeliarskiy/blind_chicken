import 'package:flutter/material.dart';

class CatalogDescriptionProductInfo extends StatelessWidget {
  const CatalogDescriptionProductInfo({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: 24.5,
        ),
      ],
    );
  }
}
