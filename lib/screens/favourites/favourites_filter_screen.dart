import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/blind_chicken_close_botton.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_catalog.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

@RoutePage()
class FavouritesFiltersScreen extends StatefulWidget {
  const FavouritesFiltersScreen({super.key});

  @override
  State<FavouritesFiltersScreen> createState() => _FavouritesFiltersScreenState();
}

class _FavouritesFiltersScreenState extends State<FavouritesFiltersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<FavouritesBloc, FavouritesState>(builder: (context, state) {
              return state.maybeMap(
                  productsFavourites: (initState) {
                    return CatalogHeaderInfo(
                      title: 'Фильтры',
                      onClose: () {
                        context.popRoute();
                      },
                      onRemoveAllFilters: () {
                        context.read<FavouritesBloc>().add(
                              const FavouritesEvent.removeSelectAllFilters(),
                            );
                      },
                      isRemoveAllFilters: initState.allSelectFilter.isNotEmpty,
                    );
                  },
                  orElse: () => const SizedBox());
            }),
            Expanded(
              child: BlocBuilder<FavouritesBloc, FavouritesState>(
                builder: (context, state) {
                  return state.maybeMap(
                    productsFavourites: (initState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: initState.filter.length,
                        itemBuilder: (context, index) {
                          return FilterItemCatalog(
                            selectFilter: initState.selectFilter[index] ?? [],
                            isRemoveAllFilters: (initState.selectFilter[index] ?? []).isNotEmpty,
                            onRemoveAllFilters: () {
                              context.read<FavouritesBloc>().add(
                                    FavouritesEvent.removeSelectFilterCategory(index: index),
                                  );
                            },
                            item: initState.filter[index].title,
                            onTap: () {
                              if (initState.filter[index].isSearch) {
                                context.navigateTo(FavouritesFilterSelectValueSearchRoute(
                                  index: index,
                                  title: initState.filter[index].title,
                                  filterItems: initState.filter[index].items,
                                  selectFilter: initState.selectFilter[index] ?? [],
                                  onDelete: (item, indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                  onSelect: (item, indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.selectFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                ));
                              } else {
                                context.navigateTo(FavouritesFilterSelectValueRoute(
                                  index: index,
                                  title: initState.filter[index].title,
                                  filterItems: initState.filter[index].items,
                                  selectFilter: initState.selectFilter[index] ?? [],
                                  onDelete: (item, indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                  onSelect: (item, indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.selectFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                ));
                              }
                            },
                            onRemove: (indexItem) {
                              context.read<FavouritesBloc>().add(
                                    FavouritesEvent.deleteFilter(
                                      index: index,
                                      indexItem: indexItem,
                                      item: initState.selectFilter[index]?[indexItem] ??
                                          FilterItemDataModel(
                                            id: 0,
                                            value: '',
                                            typeFilter: '',
                                          ),
                                    ),
                                  );
                            },
                          );
                        },
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ),
            BlocBuilder<FavouritesBloc, FavouritesState>(builder: (context, state) {
              return state.maybeMap(
                  productsFavourites: (initState) {
                    return BlindChickenFilterButton(
                      onOpen: () {
                        context.popRoute();
                      },
                      countProducts: initState.favouritesProductsInfo?.count ?? '',
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
