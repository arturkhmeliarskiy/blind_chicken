import 'package:flutter/material.dart';

class CatalogDescriptionProductInfo extends StatefulWidget {
  const CatalogDescriptionProductInfo({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<CatalogDescriptionProductInfo> createState() => _CatalogDescriptionProductInfoState();
}

class _CatalogDescriptionProductInfoState extends State<CatalogDescriptionProductInfo> {
  bool _isWrap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: Theme.of(context).textTheme.headline2,
          maxLines: _isWrap ? null : 4,
        ),
        const SizedBox(
          height: 7,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _isWrap = !_isWrap;
            });
          },
          child: Text(
            _isWrap ? 'Свернуть описание' : 'Развернуть описание',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
        const SizedBox(
          height: 24.5,
        ),
      ],
    );
  }
}
