import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17.5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.5,
                right: 10.5,
              ),
              child: Text(
                'Избранное',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            BlocBuilder<FavouritesBloc, FavouritesState>(
              builder: (context, state) {
                return state.maybeMap(
                    productsFavourites: (initState) {
                      return initState.favouritesProducts.isEmpty && initState.selectFilter.isEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(
                                top: 14.0,
                                left: 10.5,
                                right: 10.5,
                              ),
                              child: Text(
                                'В избранном пока пусто.',
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10.5,
                                    right: 10.5,
                                  ),
                                  height: 60,
                                  child: InkWell(
                                    onTap: () {
                                      context.navigateTo(const FavouritesFiltersRoute());
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
                                              style:
                                                  Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                        color: BlindChickenColors.backgroundColor,
                                                        height: 1,
                                                      ),
                                            ),
                                          )
                                        else
                                          const SizedBox(),
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
                                              context.read<FavouritesBloc>().add(
                                                    FavouritesEvent.deleteCatalogFilter(
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
                                  )
                                else
                                  const SizedBox(),
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
                                  itemCount:
                                      initState.favouritesProducts.length, // total number of items
                                  itemBuilder: (context, index) {
                                    return CatalogCardItem(
                                      isLike: true,
                                      onSelect: () {
                                        context.navigateTo(
                                          CatalogCardInfoRoute(
                                            isChildRoute: false,
                                            item: initState.favouritesProducts[index],
                                            isLike: true,
                                            addLike: () {
                                              context.read<FavouritesBloc>().add(
                                                    FavouritesEvent.addFavouriteProduct(
                                                      product: initState.favouritesProducts[index],
                                                      index: initState.favouritesProducts[index].id,
                                                    ),
                                                  );
                                              context.read<CatalogBloc>().add(
                                                  const CatalogEvent.updateFavouritesProducts());
                                            },
                                            deleteLike: () {
                                              context.read<FavouritesBloc>().add(
                                                    FavouritesEvent.deleteFavouriteProduct(
                                                      index: initState.favouritesProducts[index].id,
                                                    ),
                                                  );
                                              context.read<CatalogBloc>().add(
                                                  const CatalogEvent.updateFavouritesProducts());
                                            },
                                            listItems: initState.favouritesProducts,
                                            favouritesProducts: initState.favouritesProducts,
                                          ),
                                        );
                                      },
                                      imageUrl: initState.favouritesProducts[index].images[0],
                                      brend: initState.favouritesProducts[index].brend,
                                      catrgory: initState.favouritesProducts[index].catrgory,
                                      yourPrice:
                                          initState.favouritesProducts[index].yourPrice.toString(),
                                      maximumCashback: initState
                                          .favouritesProducts[index].maximumCashback
                                          .toString(),
                                      price: initState.favouritesProducts[index].price.toString(),
                                      onAddFavouriteProduct: () {
                                        context.read<FavouritesBloc>().add(
                                              FavouritesEvent.addFavouriteProduct(
                                                product: initState.favouritesProducts[index],
                                                index: initState.favouritesProducts[index].id,
                                              ),
                                            );
                                        context
                                            .read<CatalogBloc>()
                                            .add(const CatalogEvent.updateFavouritesProducts());
                                      },
                                      onDeleteFavouriteProduct: () {
                                        context.read<FavouritesBloc>().add(
                                              FavouritesEvent.deleteFavouriteProduct(
                                                index: initState.favouritesProducts[index].id,
                                              ),
                                            );
                                        context
                                            .read<CatalogBloc>()
                                            .add(const CatalogEvent.updateFavouritesProducts());
                                      },
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
    );
  }
}
