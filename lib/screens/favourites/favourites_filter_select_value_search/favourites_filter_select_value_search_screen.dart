import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class FavouritesFilterSelectValueSearchScreen extends StatefulWidget {
  const FavouritesFilterSelectValueSearchScreen({
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
  State<FavouritesFilterSelectValueSearchScreen> createState() =>
      _FavouritesFilterSelectValueSearchScreenState();
}

class _FavouritesFilterSelectValueSearchScreenState
    extends State<FavouritesFilterSelectValueSearchScreen> {
  final TextEditingController _search = TextEditingController();
  List<FilterItemDataModel> _results = [];

  @override
  void initState() {
    _results = widget.filterItems;
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  void _handleSearch(String value) {
    if (value.isNotEmpty) {
      _results = [];
      for (var str in widget.filterItems) {
        if (str.value.toLowerCase().contains(value.toLowerCase())) {
          setState(() {
            _results.add(str);
          });
        }
      }
    } else {
      setState(() {
        _results = widget.filterItems;
      });
    }
  }

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
            Container(
              height: 37,
              margin: const EdgeInsets.only(
                left: 11.2,
                right: 11.2,
                bottom: 11.2,
              ),
              child: TextField(
                onTap: () {},
                onChanged: (value) {
                  setState(() {
                    _handleSearch(value);
                  });
                },
                controller: _search,
                cursorColor: BlindChickenColors.activeBorderTextField,
                style: Theme.of(context).textTheme.headline2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: BlindChickenColors.borderTextField,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: BlindChickenColors.activeBorderTextField,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Поиск',
                  hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
                        color: BlindChickenColors.textInput,
                      ),
                  suffixIcon: _search.text.isNotEmpty
                      ? InkWell(
                          onTap: () {
                            _search.clear();
                            setState(() {
                              _results = widget.filterItems;
                            });
                          },
                          child: Transform.scale(
                            scale: 0.5,
                            child: SvgPicture.asset('assets/icons/x.svg'),
                          ),
                        )
                      : const SizedBox(),
                  contentPadding: const EdgeInsets.only(
                    top: 7,
                    bottom: 7,
                    left: 10.5,
                    right: 10.5,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _results.length,
                itemBuilder: (context, indexItem) {
                  return FilterItemValue(
                    item: _results[indexItem],
                    onDelete: () {
                      widget.onDelete(indexItem);
                    },
                    onSelect: (item) {
                      widget.onSelect(item, indexItem);
                    },
                    isSelect: widget.selectFilter.contains(_results[indexItem]),
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
