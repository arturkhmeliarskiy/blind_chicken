import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info_title.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCategoryInfo extends StatelessWidget {
  const CatalogCategoryInfo({super.key, required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(categories.length, (indexCategory) {
        return Container(
            padding: const EdgeInsets.only(
              top: 7,
              bottom: 7,
              right: 14,
              left: 14,
            ),
            margin: const EdgeInsets.only(right: 14, bottom: 14),
            decoration: BoxDecoration(
              color: BlindChickenColors.backgroundColorItemFilter,
              borderRadius: BorderRadius.circular(4),
            ),
            child: CatalogCategoryInfoTitle(
              title: categories[indexCategory],
            ));
      }),
    );
  }
}
