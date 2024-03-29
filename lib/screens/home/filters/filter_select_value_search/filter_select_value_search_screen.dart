import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/blind_chicken_close_botton.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_value.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class FilterSelectValueSearchScreen extends StatefulWidget {
  const FilterSelectValueSearchScreen({
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
  final Function(FilterItemDataModel, int) onDelete;
  final Function(FilterItemDataModel, int) onSelect;

  @override
  State<FilterSelectValueSearchScreen> createState() => _FilterSelectValueSearchScreenState();
}

class _FilterSelectValueSearchScreenState extends State<FilterSelectValueSearchScreen> {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
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
                style: Theme.of(context).textTheme.displayMedium,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: BlindChickenColors.borderTextField,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
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
                  hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                    onDelete: (item) {
                      widget.onDelete(item, indexItem);
                    },
                    onSelect: (item) {
                      widget.onSelect(item, indexItem);
                    },
                    isSelect: widget.selectFilter.contains(_results[indexItem]),
                  );
                },
              ),
            ),
            BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
              return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return BlindChickenFilterButton(
                      onOpen: () {
                        context.navigateTo(
                          CatalogRoute(
                            title: initState.title ?? '',
                            url: initState.pathMenu.last.url,
                          ),
                        );
                      },
                      countProducts: initState.catalogInfo?.count ?? '',
                    );
                  },
                  orElse: () => const SizedBox());
            }),
          ],
        ),
      ),
    );
  }
}
