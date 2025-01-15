import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class ItemCatalogMenu extends StatelessWidget {
  const ItemCatalogMenu({
    super.key,
    required this.item,
    required this.onTap,
    required this.selectValue,
    required this.onRemove,
  });

  final MenuItemDataModel item;
  final VoidCallback onTap;
  final ValueChanged<int> onRemove;
  final List<FilterItemDataModel> selectValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                  item.name,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: item.bold == 1 ? FontWeight.w600 : FontWeight.w400,
                    shadows: [
                      item.title != 0
                          ? Shadow(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(
                                0.1,
                              ),
                              offset: const Offset(0, 1),
                              blurRadius: 1,
                            )
                          : const Shadow(),
                    ],
                  ),
                ),
                if (item.sub == 1)
                  SvgPicture.asset(
                    'assets/icons/chevron-right.svg',
                  ),
              ],
            ),
          ),
          if (selectValue.isNotEmpty)
            SizedBox(
              height: 34,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(selectValue.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: BlindChickenColors.backgroundColorItemFilter,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      margin: EdgeInsets.only(
                        left: 12,
                        right: selectValue.length - 1 == index ? 12 : 0,
                      ),
                      padding: const EdgeInsets.all(3.5),
                      height: 27,
                      child: Row(
                        children: [
                          Text(
                            selectValue[index].value,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          InkWell(
                            onTap: () {
                              onRemove(index);
                            },
                            child: SvgPicture.asset(
                              'assets/icons/x.svg',
                              width: 13.3,
                              height: 13.3,
                            ),
                          )
                        ],
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
