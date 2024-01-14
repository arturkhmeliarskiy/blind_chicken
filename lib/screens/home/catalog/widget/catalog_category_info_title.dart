import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCategoryInfoTitle extends StatefulWidget {
  const CatalogCategoryInfoTitle({super.key, required this.title});

  final String title;

  @override
  State<CatalogCategoryInfoTitle> createState() => _CatalogCategoryInfoTitleState();
}

class _CatalogCategoryInfoTitleState extends State<CatalogCategoryInfoTitle> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      text: TextSpan(
        children: BlindChickenCheckWordStyle.textToWords(
          widget.title,
          context,
        ),
      ),
    );
  }
}
