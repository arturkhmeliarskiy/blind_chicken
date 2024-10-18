import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/blind_chicken_close_botton.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_catalog.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogSearchFiltersScreen extends StatefulWidget {
  const CatalogSearchFiltersScreen({super.key});

  @override
  State<CatalogSearchFiltersScreen> createState() => _CatalogSearchFiltersScreenState();
}

class _CatalogSearchFiltersScreenState extends State<CatalogSearchFiltersScreen> {
  final BlindChickenShowDialogError _blindChickenFilterShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogFilterError = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        state.maybeMap(
          searchProductsResult: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogFilterError &&
                  (typeError == 'выбрать фильтр' ||
                      typeError == 'удалить фильтр' ||
                      typeError == 'удалить фильтры из категории' ||
                      typeError == 'удалить все фильтры')) {
                _isShowDialogFilterError = true;
                _blindChickenFilterShowDialogError.openShowDualog(
                    context: context,
                    errorMessage: initState.errorMessage ?? '',
                    isClose: true,
                    onCloseRequest: () {
                      _blindChickenFilterShowDialogError.closeShowDialog();
                      _isShowDialogFilterError = false;
                    },
                    widget: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          searchProductsResult: (value) {
                            if (value.isLoadErrorButton ?? false) {
                              return const SizedBox(
                                height: 15,
                                width: 15,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                                ),
                              );
                            } else {
                              return Text(
                                'Повторить',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      color: BlindChickenColors.backgroundColor,
                                    ),
                                textAlign: TextAlign.center,
                              );
                            }
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                    onRepeatRequest: () {
                      switch (typeError) {
                        case 'выбрать фильтр':
                          context.read<SearchBloc>().add(
                                SearchEvent.selectFilter(
                                  index: initState.indexFileter ?? 0,
                                  indexItem: initState.indexItemFileter ?? 0,
                                  item: initState.itemFileter ??
                                      FilterItemDataModel(
                                        id: 0,
                                        value: '',
                                        typeFilter: '',
                                      ),
                                ),
                              );
                          break;
                        case 'удалить фильтр':
                          context.read<SearchBloc>().add(
                                SearchEvent.deleteFilter(
                                  index: initState.indexFileter ?? 0,
                                  indexItem: initState.indexItemFileter ?? 0,
                                  item: initState.itemFileter ??
                                      FilterItemDataModel(
                                        id: 0,
                                        value: '',
                                        typeFilter: '',
                                      ),
                                ),
                              );
                          break;
                        case 'удалить фильтры из категории':
                          context.read<SearchBloc>().add(
                                SearchEvent.removeSelectFilterCategory(
                                    index: initState.indexFilterCategory ?? 0),
                              );
                          break;
                        case 'удалить все фильтры':
                          context.read<SearchBloc>().add(
                                SearchEvent.removeSelectAllFilters(),
                              );
                          break;
                      }
                    });
              }
            } else {
              if (_isShowDialogFilterError && !(initState.isError ?? false)) {
                _isShowDialogFilterError = false;
                _blindChickenFilterShowDialogError.closeShowDialog();
              }
            }
          },
          orElse: () {},
        );
      },
      child: Scaffold(
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
                          context.maybePop();
                        },
                        onRemoveAllFilters: () {
                          context
                              .read<SearchBloc>()
                              .add(const SearchEvent.removeSelectAllFilters());
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
                                              indexItem: indexItem - 1,
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
                                              indexItem: indexItem - 1,
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
                          context.maybePop();
                        },
                        countProducts: initState.searchResultInfo?.count ?? '',
                      );
                    },
                    orElse: () => const SizedBox());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
