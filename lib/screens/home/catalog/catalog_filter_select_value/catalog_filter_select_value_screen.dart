import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogFilterSelectValueScreen extends StatefulWidget {
  const CatalogFilterSelectValueScreen({
    super.key,
    required this.index,
    required this.title,
    required this.filterItems,
    required this.selectFilter,
    required this.onDelete,
    required this.onSelect,
  });

  final int index;
  final String title;
  final List<FilterItemDataModel> filterItems;
  final List<FilterItemDataModel> selectFilter;
  final Function(int) onDelete;
  final Function(FilterItemDataModel, int) onSelect;

  @override
  State<CatalogFilterSelectValueScreen> createState() => _CatalogFilterSelectValueScreenState();
}

class _CatalogFilterSelectValueScreenState extends State<CatalogFilterSelectValueScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 53.5,
              margin: const EdgeInsets.only(
                left: 12.6,
                right: 12.6,
                bottom: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.popRoute();
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/chevron-left.svg',
                          height: 21,
                          width: 21,
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.popRoute();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                      height: 21,
                      width: 21,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 12.6,
                right: 12.6,
              ),
              child: Divider(
                height: 1,
                color: BlindChickenColors.borderBottomColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.filterItems.length,
                itemBuilder: (context, indexItem) {
                  return FilterItemValue(
                    item: widget.filterItems[indexItem],
                    onDelete: () {
                      widget.onDelete(indexItem);
                    },
                    onSelect: (item) {
                      widget.onSelect(item, indexItem);
                    },
                    isSelect: widget.selectFilter.contains(widget.filterItems[indexItem]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
