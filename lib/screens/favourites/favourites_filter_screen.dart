import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/filters/widgets/blind_chicken_close_botton.dart';
import 'package:blind_chicken/screens/home/filters/widgets/filter_item_catalog.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class FavouritesFiltersScreen extends StatefulWidget {
  const FavouritesFiltersScreen({super.key});

  @override
  State<FavouritesFiltersScreen> createState() => _FavouritesFiltersScreenState();
}

class _FavouritesFiltersScreenState extends State<FavouritesFiltersScreen> {
  final BlindChickenShowDialogError _blindChickenFilterShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogFilterError = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<FavouritesBloc, FavouritesState>(
      listener: (context, state) {
        state.maybeMap(
          productsFavourites: (initState) {
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
                    widget: BlocBuilder<FavouritesBloc, FavouritesState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          productsFavourites: (value) {
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
                          context.read<FavouritesBloc>().add(
                                FavouritesEvent.selectFilter(
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
                          context.read<FavouritesBloc>().add(
                                FavouritesEvent.deleteFilter(
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
                          context.read<FavouritesBloc>().add(
                                FavouritesEvent.removeSelectFilterCategory(
                                  index: initState.indexFilterCategory ?? 0,
                                ),
                              );
                          break;
                        case 'удалить все фильтры':
                          context.read<FavouritesBloc>().add(
                                const FavouritesEvent.removeSelectAllFilters(),
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
              BlocBuilder<FavouritesBloc, FavouritesState>(builder: (context, state) {
                return state.maybeMap(
                    productsFavourites: (initState) {
                      return CatalogHeaderInfo(
                        title: 'Фильтры',
                        onClose: () {
                          context.maybePop();
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
                                              indexItem: indexItem - 1,
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
                                              indexItem: indexItem - 1,
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
                          context.maybePop();
                        },
                        countProducts: initState.favouritesProductsInfo?.count ?? '',
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
