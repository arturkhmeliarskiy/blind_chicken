import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info_title.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogCategoryInfo extends StatelessWidget {
  const CatalogCategoryInfo({
    super.key,
    required this.sections,
    required this.onTap,
  });

  final List<SectionItemProductDataModel> sections;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(sections.length, (indexCategory) {
        return GestureDetector(
          onTap: () {
            onTap(sections[indexCategory].u);
          },
          child: Container(
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
              title: sections[indexCategory].n,
            ),
          ),
        );
      }),
    );
  }
}
