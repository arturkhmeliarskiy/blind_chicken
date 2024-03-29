import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogSearchResultScreen extends StatefulWidget {
  const CatalogSearchResultScreen({super.key});

  @override
  State<CatalogSearchResultScreen> createState() => _CatalogSearchResultScreenState();
}

class _CatalogSearchResultScreenState extends State<CatalogSearchResultScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  double _historyPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
  }

  void _loadMoreData() async {
    _historyPosition = _scrollController.position.pixels;
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;

          context.read<SearchBloc>().add(
                const SearchEvent.paginationProduct(),
              );
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
        return true;
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: BlindChickenColors.backgroundColor,
            body: SafeArea(
              child: ListView(
                controller: _scrollController,
                cacheExtent: _historyPosition,
                children: [
                  const AppBarBlindChicken(),
                  BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          searchProductsResult: (initState) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              _scrollController.jumpTo(_historyPosition);
                            });
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 17.5,
                                    bottom: 14,
                                    left: 10.5,
                                    right: 10.5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'По запросу «${initState.query}» найдено',
                                        style: Theme.of(context).textTheme.titleSmall,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${initState.searchResultInfo?.count} товаров'
                                                .spaceSeparateNumbers(),
                                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                  height: 1.1,
                                                ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10.5,
                                    right: 10.5,
                                    bottom: 10.5,
                                  ),
                                  height: 30,
                                  child: InkWell(
                                    onTap: () {
                                      context.navigateTo(const CatalogSearchFiltersRoute());
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
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                        ),
                                        BlocBuilder<SearchBloc, SearchState>(
                                            builder: (context, state) {
                                          return state.maybeMap(
                                            searchProductsResult: (initState) {
                                              if (initState.allSelectFilter.isNotEmpty) {
                                                return Container(
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
                                                );
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                            orElse: () => const SizedBox(),
                                          );
                                        })
                                      ],
                                    ),
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
                                              context.read<SearchBloc>().add(
                                                    SearchEvent.deleteCatalogFilter(
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
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Wrap(
                                      children: List.generate(
                                        initState.products.length,
                                        (index) {
                                          return CatalogCardItem(
                                            isLike: initState.favouritesProductsId
                                                .contains(initState.products[index].id),
                                            onSelect: () {
                                              context.read<ShoppingCartBloc>().add(
                                                    const ShoppingCartEvent.preloadData(),
                                                  );
                                              context.read<SearchBloc>().add(
                                                    SearchEvent.getInfoProduct(
                                                      code: initState.products[index].id.toString(),
                                                    ),
                                                  );
                                              context.navigateTo(
                                                CatalogSearchCardInfoRoute(
                                                  isChildRoute: false,
                                                  item: initState.products[index],
                                                  isLike: initState.favouritesProductsId
                                                      .contains(initState.products[index].id),
                                                  listItems: initState.products,
                                                  favouritesProducts:
                                                      initState.favouritesProducts ?? [],
                                                ),
                                              );
                                            },
                                            imageUrl: initState.products[index].images[0],
                                            brend: initState.products[index].brend,
                                            category: initState.products[index].category,
                                            yourPrice:
                                                initState.products[index].yourPrice.toString(),
                                            price: initState.products[index].price.toString(),
                                            isYourPriceDisplayed:
                                                initState.products[index].isYourPriceDisplayed,
                                            maximumCashback: initState
                                                .products[index].maximumCashback
                                                .toString(),
                                            onAddFavouriteProduct: () {
                                              context.read<SearchBloc>().add(
                                                    SearchEvent.addFavouriteProduct(
                                                      product: initState.products[index],
                                                      index: initState.products[index].id,
                                                    ),
                                                  );
                                            },
                                            pb: initState.products[index].pb,
                                            onDeleteFavouriteProduct: () {
                                              context.read<SearchBloc>().add(
                                                    SearchEvent.deleteFavouriteProduct(
                                                      index: initState.products[index].id,
                                                    ),
                                                  );
                                            },
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                          orElse: () => const SizedBox());
                    },
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.maybeMap(
                load: (value) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      backgroundColor: Colors.grey.shade400,
                    ),
                  );
                },
                searchProductsResult: (initState) {
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
            },
          ),
        ],
      ),
    );
  }
}
