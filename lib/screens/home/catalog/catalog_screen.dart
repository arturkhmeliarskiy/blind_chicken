import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({
    super.key,
    this.isBack = true,
    this.onBack,
    required this.title,
  });

  final bool isBack;
  final VoidCallback? onBack;
  final String title;

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  String _selectSortItem = 'Сначала новинки';
  final ScrollController _scrollController = ScrollController();
  int offset = 1;
  int perOffset = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
    context.read<CatalogBloc>().add(
          const CatalogEvent.getInfoProducts(path: '/test/'),
        );
  }

  void _loadMoreData() async {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
          offset = offset + perOffset;
          context.read<CatalogBloc>().add(CatalogEvent.paginationProduct(offset: offset, limit: 0));
          log(offset.toString());
        });
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.onBack!();
        return true;
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: BlindChickenColors.backgroundColor,
            body: SafeArea(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppBarBlindChicken(),
                    BlocBuilder<CatalogBloc, CatalogState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            List<String> listCategory =
                                initState.catalogInfo?.filter.map((item) => item.title).toList() ??
                                    [];
                            List<String> listItems = [
                              initState.catalogInfo?.h1 ?? '',
                              ...listCategory
                            ];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.only(
                                    left: 10.5,
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: initState.pathMenu.map(
                                      (item) {
                                        return Text(
                                          '${item.name}  ',
                                          style: Theme.of(context).textTheme.displaySmall,
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 60,
                                  margin: const EdgeInsets.only(
                                    left: 10.5,
                                    bottom: 10,
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: initState.catalogInfo?.h1 ?? '',
                                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                                height: 1.4,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '   ${initState.catalogInfo?.count ?? ''}',
                                          style: Theme.of(context).textTheme.displaySmall,
                                        ),
                                        TextSpan(
                                          text: ' товаров',
                                          style: Theme.of(context).textTheme.displaySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (initState.catalogInfo?.h1.isNotEmpty ?? false)
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10.5,
                                      right: 10.5,
                                    ),
                                    height: 35,
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: listItems.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              if (index == 0 && widget.isBack) {
                                                context.back();
                                              }
                                            },
                                            child: Container(
                                              padding: index == 0 && widget.isBack
                                                  ? const EdgeInsets.only(
                                                      right: 14,
                                                      top: 7,
                                                      bottom: 7,
                                                    )
                                                  : const EdgeInsets.symmetric(
                                                      horizontal: 14,
                                                      vertical: 7,
                                                    ),
                                              margin: const EdgeInsets.only(
                                                right: 10.5,
                                              ),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: BlindChickenColors.backgroundColorItemFilter,
                                                borderRadius: BorderRadius.circular(
                                                  4,
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  if (index == 0 && widget.isBack)
                                                    SvgPicture.asset(
                                                      'assets/icons/chevron-left.svg',
                                                    ),
                                                  Text(
                                                    listItems[index],
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10.5,
                                    right: 10.5,
                                  ),
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          context.navigateTo(
                                            SortRoute(
                                              onChange: (value) {
                                                context.popRoute();
                                                setState(() {
                                                  _selectSortItem = value;
                                                });
                                                context.read<CatalogBloc>().add(
                                                      CatalogEvent.sortProducts(value: value),
                                                    );
                                              },
                                              selectItem: _selectSortItem,
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              _selectSortItem,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            SvgPicture.asset(
                                              'assets/icons/sort.svg',
                                              height: 14,
                                              width: 14,
                                            )
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          context.navigateTo(const FiltersRoute());
                                        },
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/filter.svg',
                                              height: 17.5,
                                              width: 17.5,
                                            ),
                                            const SizedBox(
                                              width: 3.5,
                                            ),
                                            Text(
                                              'Фильтры',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            if (initState.allSelectFilter.isNotEmpty)
                                              Container(
                                                height: 14,
                                                padding: const EdgeInsets.only(
                                                  right: 4,
                                                  left: 4,
                                                ),
                                                margin: const EdgeInsets.only(left: 6),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: BlindChickenColors.activeBorderTextField,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Text(
                                                  initState.allSelectFilter.length.toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        color: BlindChickenColors.backgroundColor,
                                                        height: 1,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (initState.allSelectFilter.isNotEmpty)
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 12,
                                      right: 12,
                                    ),
                                    height: 34,
                                    child: ListView(scrollDirection: Axis.horizontal, children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: List.generate(initState.allSelectFilter.length,
                                            (index) {
                                          return InkWell(
                                            onTap: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.deleteCatalogFilter(
                                                      key: initState
                                                          .allSelectFilter[index].keys.first,
                                                      index: index,
                                                      item: initState
                                                          .allSelectFilter[index].values.first,
                                                    ),
                                                  );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: BlindChickenColors.backgroundColorItemFilter,
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              margin: EdgeInsets.only(
                                                right: initState.allSelectFilter.length - 1 != index
                                                    ? 12
                                                    : 0,
                                              ),
                                              padding: const EdgeInsets.all(3.5),
                                              height: 27,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    initState
                                                        .allSelectFilter[index].values.first.value,
                                                    style: Theme.of(context).textTheme.displaySmall,
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
                                  ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, // number of items in each row
                                      mainAxisSpacing: 18.0, // spacing between rows
                                      crossAxisSpacing: 18.0, // spacing between columns
                                      childAspectRatio: 0.46),
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    left: 10.5,
                                    right: 10.5,
                                  ), // padding around the grid
                                  itemCount: initState.products.length, // total number of items
                                  itemBuilder: (context, index) {
                                    return CatalogCardItem(
                                      isLike: initState.favouritesProductsId
                                          .contains(initState.products[index].id),
                                      onAddFavouriteProduct: () {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.addFavouriteProduct(
                                                index: initState.products[index].id,
                                                product: initState.products[index],
                                              ),
                                            );
                                      },
                                      onDeleteFavouriteProduct: () {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.deleteFavouriteProduct(
                                                index: initState.products[index].id,
                                              ),
                                            );
                                      },
                                      onSelect: () {
                                        context.navigateTo(
                                          CatalogCardInfoRoute(
                                            item: initState.products[index],
                                            isLike: initState.favouritesProductsId
                                                .contains(initState.products[index].id),
                                            addLike: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.addFavouriteProduct(
                                                      product: initState.products[index],
                                                      index: initState.products[index].id,
                                                    ),
                                                  );
                                            },
                                            deleteLike: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.deleteFavouriteProduct(
                                                      index: initState.products[index].id,
                                                    ),
                                                  );
                                            },
                                            listItems: initState.products,
                                            favouritesProducts: initState.favouritesProducts,
                                            isChildRoute: false,
                                          ),
                                        );
                                      },
                                      yourPrice: initState.products[index].yourPrice.toString(),
                                      imageUrl: initState.products[index].images[0],
                                      brend: initState.products[index].brend,
                                      catrgory: initState.products[index].catrgory,
                                      price: initState.products[index].price.toString(),
                                      maximumCashback:
                                          initState.products[index].maximumCashback.toString(),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
            return state.maybeMap(
              load: (value) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                );
              },
              preloadDataCompleted: (initState) {
                return isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      )
                    : const SizedBox();
              },
              orElse: () => const SizedBox(),
            );
          }),
        ],
      ),
    );
  }
}
