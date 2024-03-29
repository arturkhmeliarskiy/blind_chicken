import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

// ignore: must_be_immutable
class CatalogDescriptionInfoItem extends StatelessWidget {
  CatalogDescriptionInfoItem({
    super.key,
    required this.title,
    required this.value,
    this.styleTitle,
    this.styleValue,
  });

  final String title;
  final String value;
  TextStyle? styleTitle;
  TextStyle? styleValue;

  String ellipsis() {
    String result = '';
    for (int i = 0; i < 1000; i++) {
      result = '$result.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width / 2 - 14,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: styleTitle ?? Theme.of(context).textTheme.displayMedium,
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Text(
                      ellipsis(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                            color: BlindChickenColors.dotItem,
                          ),
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 17.5),
                child: Text(
                  value,
                  style: styleValue ??
                      Theme.of(context).textTheme.displayMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
