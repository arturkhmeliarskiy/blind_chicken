import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/blind_chicken_close_botton.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_value.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

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
  final Function(FilterItemDataModel, int) onDelete;
  final Function(FilterItemDataModel, int) onSelect;

  @override
  State<CatalogFilterSelectValueScreen> createState() => _CatalogFilterSelectValueScreenState();
}

class _CatalogFilterSelectValueScreenState extends State<CatalogFilterSelectValueScreen> {
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
                      context.maybePop();
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
                      context.maybePop();
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
              child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
                return state.maybeMap(
                  searchProductsResult: (initState) {
                    return ListView.builder(
                      itemCount: widget.filterItems.length,
                      itemBuilder: (context, indexItem) {
                        List<FilterItemDataModel> selectFilter =
                            (initState.selectFilter[widget.index] ?? []).toList();
                        return FilterItemValue(
                          item: widget.filterItems[indexItem],
                          onDelete: (item) {
                            widget.onDelete(item, indexItem);
                          },
                          onSelect: (item) {
                            widget.onSelect(item, indexItem);
                          },
                          isSelect: selectFilter.contains(widget.filterItems[indexItem]),
                        );
                      },
                    );
                  },
                  orElse: () => const SizedBox(),
                );
              }),
            ),
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return state.maybeMap(
                  searchProductsResult: (initState) {
                    return BlindChickenFilterButton(
                      onOpen: () {
                        context.navigateTo(
                          const CatalogSearchResultRoute(),
                        );
                      },
                      countProducts: initState.searchResultInfo?.count ?? '',
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
