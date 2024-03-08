import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  String _selectSortItem = 'Сначала новинки';
  final ScrollController _scrollController = ScrollController();

  bool isLoading = false;
  List<String> listItems = [
    'Очки',
    'Оправы',
    'Солнцезащитные очки',
    'Горнолыжные маски',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMoreData);
  }

  void _loadMoreData() async {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;

          context.read<CatalogBloc>().add(const CatalogEvent.paginationProduct());
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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: BlindChickenColors.backgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const AppBarBlindChicken(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(
                      left: 10.5,
                    ),
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment:
                          Platform.isAndroid ? CrossAxisAlignment.end : CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sale',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                height: 1,
                              ),
                        ),
                        const SizedBox(
                          width: 10.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Text(
                            '221 товаров',
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1,
                                ),
                          ),
                        )
                      ],
                    ),
                  ),
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
                          return Container(
                            padding: const EdgeInsets.symmetric(
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
                            child: Text(
                              listItems[index],
                              style: Theme.of(context).textTheme.displayMedium,
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
                                },
                                selectItem: _selectSortItem,
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                _selectSortItem,
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                                return state.maybeMap(
                                  preloadDataCompleted: (initState) {
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
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                color: BlindChickenColors.backgroundColor,
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
                      ],
                    ),
                  ),
                  BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                    return state.maybeMap(
                      preloadDataCompleted: (initState) {
                        if (initState.allSelectFilter.isNotEmpty) {
                          return Container(
                            margin: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                            ),
                            height: 34,
                            child: ListView(scrollDirection: Axis.horizontal, children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(initState.allSelectFilter.length, (index) {
                                  return InkWell(
                                    onTap: () {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.deleteCatalogFilter(
                                              key: initState.allSelectFilter[index].keys.first,
                                              index: index,
                                              item: initState.allSelectFilter[index].values.first,
                                            ),
                                          );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: BlindChickenColors.backgroundColorItemFilter,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      margin: EdgeInsets.only(
                                        right:
                                            initState.allSelectFilter.length - 1 != index ? 12 : 0,
                                      ),
                                      padding: const EdgeInsets.all(3.5),
                                      height: 27,
                                      child: Row(
                                        children: [
                                          Text(
                                            initState.allSelectFilter[index].values.first.value,
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
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                      orElse: () => const SizedBox(),
                    );
                  }),
                  BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                    return state.maybeMap(
                        preloadDataCompleted: (initState) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, // number of items in each row
                                mainAxisSpacing: 18.0, // spacing between rows
                                crossAxisSpacing: 18.0, // spacing between columns
                                childAspectRatio: 0.45),
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              bottom: 8.0,
                              left: 10.5,
                              right: 10.5,
                            ), // padding around the grid
                            itemCount: initState.products.length, // total number of items
                            itemBuilder: (context, index) {
                              return CatalogCardItem(
                                isLike: initState.favouritesProducts
                                    .contains(initState.products[index]),
                                onAddFavouriteProduct: () {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.addFavouriteProduct(
                                          index: initState.products[index].id,
                                          product: initState.products[index],
                                        ),
                                      );
                                },
                                pb: initState.favouritesProducts[index].pb,
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
                                      isChildRoute: false,
                                      item: initState.products[index],
                                      isLike: initState.favouritesProducts
                                          .contains(initState.products[index]),
                                      listItems: initState.products,
                                      favouritesProducts: initState.favouritesProducts,
                                    ),
                                  );
                                },
                                imageUrl: initState.products[index].images[0],
                                brend: initState.products[index].brend,
                                category: initState.products[index].category,
                                isYourPriceDisplayed:
                                    initState.products[index].isYourPriceDisplayed,
                                yourPrice: initState.products[index].yourPrice.toString(),
                                price: initState.products[index].price.toString(),
                                maximumCashback:
                                    initState.favouritesProducts[index].maximumCashback.toString(),
                              );
                            },
                          );
                        },
                        orElse: () => const SizedBox());
                  })
                ],
              ),
            ),
          ),
        ),
        if (isLoading)
          Center(
            child: CircularProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.grey.shade400,
            ),
          ),
      ],
    );
  }
}
