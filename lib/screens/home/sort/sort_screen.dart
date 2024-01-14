import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class SortScreen extends StatefulWidget {
  const SortScreen({
    super.key,
    required this.onChange,
    required this.selectItem,
  });

  final ValueChanged<String> onChange;
  final String selectItem;

  @override
  State<SortScreen> createState() => _SortScreenState();
}

class _SortScreenState extends State<SortScreen> {
  int _selectIndex = 0;

  final List<String> _listSort = [
    'Сначала новинки',
    'По убыванию цены',
    'По возрастанию цены',
  ];

  @override
  void initState() {
    _selectIndex = _listSort.indexOf(widget.selectItem);
    super.initState();
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
              title: 'Сортировка',
              onClose: () {
                context.popRoute();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _listSort.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = index;
                      });
                      widget.onChange(_listSort[index]);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                        right: 21,
                        left: 11.2,
                      ),
                      color: _selectIndex == index
                          ? BlindChickenColors.backgroundColorItemFilter
                          : Colors.transparent,
                      child: Text(
                        _listSort[index],
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontWeight: _selectIndex == index ? FontWeight.w600 : FontWeight.w400,
                            ),
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
