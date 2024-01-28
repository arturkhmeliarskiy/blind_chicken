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
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 22,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 0,
                      maxWidth: (MediaQuery.of(context).size.width / 2) - 40,
                    ),
                    child: Text(
                      title,
                      style: styleTitle ?? Theme.of(context).textTheme.displayMedium,
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Text(
                      ellipsis(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 2.0,
                            color: BlindChickenColors.dotItem,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 17.5),
              height: 22,
              child: Text(
                value,
                style: styleValue ??
                    Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                overflow: TextOverflow.visible,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
