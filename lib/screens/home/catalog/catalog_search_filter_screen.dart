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
class CatalogSearchFiltersScreen extends StatefulWidget {
  const CatalogSearchFiltersScreen({super.key});

  @override
  State<CatalogSearchFiltersScreen> createState() => _CatalogSearchFiltersScreenState();
}

class _CatalogSearchFiltersScreenState extends State<CatalogSearchFiltersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return state.maybeMap(
                  searchProductsResult: (initState) {
                    return CatalogHeaderInfo(
                      title: 'Фильтры',
                      onClose: () {
                        context.popRoute();
                      },
                      onRemoveAllFilters: () {
                        context.read<SearchBloc>().add(const SearchEvent.removeSelectAllFilters());
                      },
                      isRemoveAllFilters: initState.allSelectFilter.isNotEmpty,
                    );
                  },
                  orElse: () => const SizedBox());
            }),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return state.maybeMap(
                    searchProductsResult: (iniState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: iniState.filter.length,
                        itemBuilder: (context, index) {
                          return FilterItemCatalog(
                            selectFilter: iniState.selectFilter[index] ?? [],
                            isRemoveAllFilters: (iniState.selectFilter[index] ?? []).isNotEmpty,
                            onRemoveAllFilters: () {
                              context.read<SearchBloc>().add(
                                    SearchEvent.removeSelectFilterCategory(index: index),
                                  );
                            },
                            item: iniState.filter[index].title,
                            onTap: () {
                              if (iniState.filter[index].isSearch) {
                                context.navigateTo(CatalogFilterSelectValueSearchRoute(
                                  index: index,
                                  title: iniState.filter[index].title,
                                  filterItems: iniState.filter[index].items,
                                  selectFilter: iniState.selectFilter[index] ?? [],
                                  onDelete: (item, indexItem) {
                                    context.read<SearchBloc>().add(
                                          SearchEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                  onSelect: (item, indexItem) {
                                    context.read<SearchBloc>().add(
                                          SearchEvent.selectFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                ));
                              } else {
                                context.navigateTo(CatalogFilterSelectValueRoute(
                                  index: index,
                                  title: iniState.filter[index].title,
                                  filterItems: iniState.filter[index].items,
                                  selectFilter: iniState.selectFilter[index] ?? [],
                                  onDelete: (item, indexItem) {
                                    context.read<SearchBloc>().add(
                                          SearchEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: item,
                                          ),
                                        );
                                  },
                                  onSelect: (item, indexItem) {
                                    context.read<SearchBloc>().add(
                                          SearchEvent.selectFilter(
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
                              context.read<SearchBloc>().add(
                                    SearchEvent.deleteFilter(
                                      index: index,
                                      indexItem: indexItem,
                                      item: iniState.selectFilter[index]?[indexItem] ??
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
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return state.maybeMap(
                  searchProductsResult: (initState) {
                    return BlindChickenFilterButton(
                      onOpen: () {
                        context.popRoute();
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
