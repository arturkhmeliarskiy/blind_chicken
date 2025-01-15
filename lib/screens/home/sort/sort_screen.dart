import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

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
  String _selectItem = '';
  final constants = ConstatntsInfo();

  @override
  void initState() {
    _selectItem = constants.listSort[widget.selectItem] ?? '';
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
                context.maybePop();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: constants.listSort.values.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectItem = constants.listSort.values.toList()[index];
                      });
                      widget.onChange(_selectItem);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                        right: 21,
                        left: 11.2,
                      ),
                      color: _selectItem == constants.listSort.values.toList()[index]
                          ? BlindChickenColors.backgroundColorItemFilter
                          : Colors.transparent,
                      child: Text(
                        constants.listSort.values.toList()[index],
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: _selectItem == constants.listSort.values.toList()[index]
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            BlindChickenTitleButton(
              title: 'Закрыть',
              onChange: () {
                context.maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
