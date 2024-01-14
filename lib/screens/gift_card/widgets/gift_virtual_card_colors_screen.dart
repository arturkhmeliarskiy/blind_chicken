import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class GiftVirualCardColorsScreen extends StatefulWidget {
  const GiftVirualCardColorsScreen({
    super.key,
    required this.selectedColor,
    required this.onChange,
  });

  final Map<dynamic, dynamic> selectedColor;
  final ValueChanged<Map<dynamic, dynamic>> onChange;

  @override
  State<GiftVirualCardColorsScreen> createState() => _GiftVirualCardColorsScreenState();
}

class _GiftVirualCardColorsScreenState extends State<GiftVirualCardColorsScreen> {
  Map<dynamic, dynamic> _selectedColor = {
    'title': 'Lilac',
    'color': BlindChickenColors.lilac,
  };

  final List<Map<dynamic, dynamic>> _listColors = [
    {
      'title': 'Lilac',
      'color': BlindChickenColors.lilac,
    },
    {
      'title': 'Green',
      'color': BlindChickenColors.green,
    },
    {
      'title': 'Sun',
      'color': BlindChickenColors.sun,
    },
    {
      'title': 'Aqua',
      'color': BlindChickenColors.aqua,
    },
    {
      'title': 'Rose',
      'color': BlindChickenColors.rose,
    },
    {
      'title': 'Pink',
      'color': BlindChickenColors.pink,
    },
    {
      'title': 'Flame',
      'color': BlindChickenColors.flame,
    },
    {
      'title': 'Red',
      'color': BlindChickenColors.red,
    },
  ];

  @override
  void initState() {
    _selectedColor = widget.selectedColor;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GiftVirualCardColorsScreen oldWidget) {
    _selectedColor = widget.selectedColor;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeaderInfo(
              title: 'Выберите цвет',
              onClose: () {
                context.popRoute();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _listColors.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedColor = _listColors[index];
                      });
                      widget.onChange(_listColors[index]);
                      context.popRoute();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                        right: 21,
                        left: 11.2,
                      ),
                      color: _selectedColor['title'] == _listColors[index]['title']
                          ? BlindChickenColors.backgroundColorItemFilter
                          : Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(
                              color: _listColors[index]['color'],
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            _listColors[index]['title'],
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            BlindChickenCloseButton(
              onClose: () {
                context.popRoute();
              },
            ),
          ],
        ),
      ),
    );
  }
}
