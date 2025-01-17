import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogDescriptionInfo extends StatefulWidget {
  const CatalogDescriptionInfo({
    super.key,
    required this.char,
  });

  final List<CharProductDataModel> char;

  @override
  State<CatalogDescriptionInfo> createState() => _CatalogDescriptionInfoState();
}

class _CatalogDescriptionInfoState extends State<CatalogDescriptionInfo> {
  List<CharProductDataModel> char = [];

  @override
  void initState() {
    for (int i = 0; i < widget.char.length; i++) {
      if (widget.char[i].value.isNotEmpty) {
        char.add(widget.char[i]);
      }
    }

    super.initState();
  }

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
            children: List.generate(char.length, (index) {
          return TableRow(children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 14,
                bottom: 10,
              ),
              child: RichText(
                maxLines: (char[index].name.length * 10) < (width / 2) ? 1 : 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: char[index].name,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.only(left: 14.0),
                      ),
                    ),
                    TextSpan(
                      text: ellipsis(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                            color: BlindChickenColors.dotItem,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (char[index].name.length * 10) > (width / 2) ? 20 : 0,
              ),
              child: Text(
                char[index].value,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                overflow: TextOverflow.visible,
              ),
            ),
          ]);
        })),
      ],
    );
  }
}
