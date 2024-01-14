import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_catalog.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

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
            CatalogHeaderInfo(
              title: 'Фильтры',
              onClose: () {
                context.popRoute();
              },
            ),
            Expanded(
              child: BlocBuilder<FavouritesBloc, FavouritesState>(
                builder: (context, state) {
                  return state.maybeMap(
                    productsFavourites: (iniState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: iniState.filter.length,
                        itemBuilder: (context, index) {
                          return FilterItemCatalog(
                            selectFilter: iniState.selectFilter[index] ?? [],
                            item: iniState.filter[index].title,
                            onTap: () {
                              if (iniState.filter[index].isSearch) {
                                context.navigateTo(FavouritesFilterSelectValueSearchRoute(
                                  index: index,
                                  title: iniState.filter[index].title,
                                  filterItems: iniState.filter[index].items,
                                  selectFilter: iniState.selectFilter[index] ?? [],
                                  onDelete: (indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: (iniState.selectFilter[index] ?? [])[indexItem],
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
                                  title: iniState.filter[index].title,
                                  filterItems: iniState.filter[index].items,
                                  selectFilter: iniState.selectFilter[index] ?? [],
                                  onDelete: (indexItem) {
                                    context.read<FavouritesBloc>().add(
                                          FavouritesEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: (iniState.selectFilter[index] ?? [])[indexItem],
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
                                      item: iniState.selectFilter[index]?[indexItem] ??
                                          FilterItemDataModel(
                                            id: 0,
                                            value: '',
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
            BlindChickenCloseButton(
              onClose: () {
                context.popRoute();
              },
            ),
          ],
        ),
      ),
    );
  }
}
