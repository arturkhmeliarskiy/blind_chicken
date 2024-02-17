import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info_item.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class CatalogDescriptionInfo extends StatefulWidget {
  const CatalogDescriptionInfo({
    super.key,
    required this.item,
    required this.char,
  });

  final ProductDataModel item;
  final List<CharProductDataModel> char;

  @override
  State<CatalogDescriptionInfo> createState() => _CatalogDescriptionInfoState();
}

class _CatalogDescriptionInfoState extends State<CatalogDescriptionInfo> {
  bool _isWrap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            children:
                List.generate(_isWrap ? widget.char.length : widget.char.length ~/ 2, (index) {
          return CatalogDescriptionInfoItem(
            title: widget.char[index].name,
            value: widget.char[index].value,
          );
        })),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _isWrap = !_isWrap;
            });
          },
          child: Text(
            _isWrap ? 'Свернуть характеристики' : 'Развернуть характерестики',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        )
      ],
    );
  }
}
