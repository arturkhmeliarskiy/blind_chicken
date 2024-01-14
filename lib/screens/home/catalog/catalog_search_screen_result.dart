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
class CatalogSearchResultScreen extends StatelessWidget {
  const CatalogSearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlindChickenColors.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          const AppBarBlindChicken(),
          BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            return state.maybeMap(
                searchProductsResult: (initState) {
                  return Padding(
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
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Row(
                          children: [
                            Text(
                              '${initState.searchProducts.length} товаров'.spaceSeparateNumbers(),
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                    height: 1.1,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => const SizedBox());
          }),
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
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
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
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
          BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            return state.maybeMap(
              searchProductsResult: (initState) {
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
                              context.read<SearchBloc>().add(
                                    SearchEvent.deleteCatalogFilter(
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
                                right: initState.allSelectFilter.length - 1 != index ? 12 : 0,
                              ),
                              padding: const EdgeInsets.all(3.5),
                              height: 27,
                              child: Row(
                                children: [
                                  Text(
                                    initState.allSelectFilter[index].values.first.value,
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
                  );
                } else {
                  return const SizedBox();
                }
              },
              orElse: () => const SizedBox(),
            );
          }),
          BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            return state.maybeMap(
              searchProductsResult: (initState) {
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
                  itemCount: initState.searchProducts.length, // total number of items
                  itemBuilder: (context, index) {
                    return CatalogCardItem(
                      isLike: initState.favouritesProducts?.contains(
                            initState.searchProducts[index],
                          ) ??
                          false,
                      onSelect: () {
                        context.navigateTo(
                          CatalogCardInfoRoute(
                            item: initState.searchProducts[index],
                            isLike: initState.favouritesProducts?.contains(
                                  initState.searchProducts[index],
                                ) ??
                                false,
                            addLike: () {
                              context.read<SearchBloc>().add(
                                    SearchEvent.addFavouriteProduct(
                                      product: initState.searchProducts[index],
                                      index: initState.searchProducts[index].id,
                                    ),
                                  );
                            },
                            deleteLike: () {
                              context.read<SearchBloc>().add(
                                    SearchEvent.deleteFavouriteProduct(
                                      index: initState.searchProducts[index].id,
                                    ),
                                  );
                            },
                            listItems: initState.searchProducts,
                            favouritesProducts: initState.favouritesProducts ?? [],
                          ),
                        );
                      },
                      imageUrl: initState.searchProducts[index].images[0],
                      brend: initState.searchProducts[index].brend,
                      catrgory: initState.searchProducts[index].catrgory,
                      price: initState.searchProducts[index].price.toString(),
                      onAddFavouriteProduct: () {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.addFavouriteProduct(
                                product: initState.searchProducts[index],
                                index: initState.searchProducts[index].id,
                              ),
                            );
                      },
                      onDeleteFavouriteProduct: () {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.deleteFavouriteProduct(
                                index: initState.searchProducts[index].id,
                              ),
                            );
                      },
                    );
                  },
                );
              },
              orElse: () => const SizedBox(),
            );
          })
        ],
      ))),
    );
  }
}
