import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info_item.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class CatalogDescriptionInfo extends StatefulWidget {
  const CatalogDescriptionInfo({
    super.key,
    required this.item,
  });

  final ProductDataModel item;

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
        Column(children: [
          CatalogDescriptionInfoItem(
            title: 'Бренд',
            value: widget.item.brend,
          ),
          CatalogDescriptionInfoItem(
            title: 'Диаметр линзы',
            value: widget.item.lensDiameter.toString(),
          ),
          CatalogDescriptionInfoItem(
            title: 'Длина заушника',
            value: widget.item.templeLength.toString(),
          ),
          CatalogDescriptionInfoItem(
            title: 'Материал оправы',
            value: 'Титан',
          ),
          CatalogDescriptionInfoItem(
            title: 'Наименование цвета',
            value: 'Black Gold',
          ),
          if (_isWrap)
            Column(
              children: [
                CatalogDescriptionInfoItem(
                  title: 'Наименование цвета линз',
                  value: 'Green Polarized',
                ),
                const SizedBox(
                  height: 10,
                ),
                CatalogDescriptionInfoItem(
                  title: 'Страна',
                  value: widget.item.country.toString(),
                ),
                CatalogDescriptionInfoItem(
                  title: 'Тип тонировки линз',
                  value: 'Однотонные; Поляризационные',
                ),
                CatalogDescriptionInfoItem(
                  title: 'Цвет',
                  value: 'Золотой; Черный',
                ),
                CatalogDescriptionInfoItem(
                  title: 'Цвет линз',
                  value: 'Зеленый',
                ),
                CatalogDescriptionInfoItem(
                  title: 'Ширина переносицы',
                  value: '20',
                ),
                CatalogDescriptionInfoItem(
                  title: 'Код',
                  value: '47692',
                ),
                CatalogDescriptionInfoItem(
                  title: 'Артикул',
                  value: 'Corsair',
                ),
              ],
            ),
        ]),
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
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  decoration: TextDecoration.underline,
                ),
          ),
        )
      ],
    );
  }
}
