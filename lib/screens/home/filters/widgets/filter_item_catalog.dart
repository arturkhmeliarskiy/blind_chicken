import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterItemCatalog extends StatefulWidget {
  const FilterItemCatalog({
    super.key,
    required this.item,
    required this.onTap,
    required this.selectFilter,
    required this.onRemove,
  });

  final String item;
  final VoidCallback onTap;
  final ValueChanged<int> onRemove;
  final List<FilterItemDataModel> selectFilter;

  @override
  State<FilterItemCatalog> createState() => _FilterItemCatalogState();
}

class _FilterItemCatalogState extends State<FilterItemCatalog> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 14,
              bottom: 14,
              left: 11.2,
              right: 11.2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.item,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SvgPicture.asset(
                  'assets/icons/chevron-right.svg',
                ),
              ],
            ),
          ),
          if (widget.selectFilter.isNotEmpty)
            SizedBox(
              height: 34,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(widget.selectFilter.length, (index) {
                    return InkWell(
                      onTap: () {
                        widget.onRemove(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: BlindChickenColors.backgroundColorItemFilter,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        margin: EdgeInsets.only(
                          left: 12,
                          right: widget.selectFilter.length - 1 == index ? 12 : 0,
                        ),
                        padding: const EdgeInsets.all(3.5),
                        height: 27,
                        child: Row(
                          children: [
                            Text(
                              widget.selectFilter[index].value,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            SvgPicture.asset(
                              'assets/icons/x.svg',
                              width: 13.3,
                              height: 13.3,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ]),
            )
        ],
      ),
    );
  }
}
