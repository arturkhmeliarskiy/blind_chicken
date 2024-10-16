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
class FiltersScreen extends StatefulWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  final BlindChickenShowDialogError _blindChickenFilterShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogFilterError = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
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
                    widget: BlocBuilder<CatalogBloc, CatalogState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (value) {
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
                          context.read<CatalogBloc>().add(
                                CatalogEvent.selectFilter(
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
                          context.read<CatalogBloc>().add(
                                CatalogEvent.deleteFilter(
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
                          context.read<CatalogBloc>().add(
                                CatalogEvent.removeSelectFilterCategory(
                                    index: initState.indexFilterCategory ?? 0),
                              );
                          break;
                        case 'удалить все фильтры':
                          context.read<CatalogBloc>().add(
                                const CatalogEvent.removeSelectAllFilters(),
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
              BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      return CatalogHeaderInfo(
                        title: 'Фильтры',
                        onClose: () {
                          context.maybePop();
                        },
                        onRemoveAllFilters: () {
                          context
                              .read<CatalogBloc>()
                              .add(const CatalogEvent.removeSelectAllFilters());
                        },
                        isRemoveAllFilters: initState.allSelectFilter.isNotEmpty,
                      );
                    },
                    orElse: () => const SizedBox());
              }),
              Expanded(
                child: BlocBuilder<CatalogBloc, CatalogState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      preloadDataCompleted: (iniState) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: iniState.filter.length,
                          itemBuilder: (contextInfo, index) {
                            return FilterItemCatalog(
                              selectFilter: iniState.selectFilter[index] ?? [],
                              isRemoveAllFilters: (iniState.selectFilter[index] ?? []).isNotEmpty,
                              onRemoveAllFilters: () {
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.removeSelectFilterCategory(index: index),
                                    );
                              },
                              item: iniState.filter[index].title,
                              onTap: () {
                                if (iniState.filter[index].isSearch) {
                                  context.navigateTo(FilterSelectValueSearchRoute(
                                    index: index,
                                    title: iniState.filter[index].title,
                                    filterItems: iniState.filter[index].items,
                                    selectFilter: iniState.selectFilter[index] ?? [],
                                    onDelete: (item, indexItem) {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.deleteFilter(
                                              index: index,
                                              indexItem: indexItem,
                                              item: item,
                                            ),
                                          );
                                    },
                                    onSelect: (item, indexItem) {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.selectFilter(
                                              index: index,
                                              indexItem: indexItem,
                                              item: item,
                                            ),
                                          );
                                    },
                                  ));
                                } else {
                                  context.navigateTo(FilterSelectValueRoute(
                                    index: index,
                                    title: iniState.filter[index].title,
                                    filterItems: iniState.filter[index].items,
                                    selectFilter: iniState.selectFilter[index] ?? [],
                                    onDelete: (item, indexItem) {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.deleteFilter(
                                              index: index,
                                              indexItem: indexItem,
                                              item: item,
                                            ),
                                          );
                                    },
                                    onSelect: (item, indexItem) {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.selectFilter(
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
                                context.read<CatalogBloc>().add(
                                      CatalogEvent.deleteFilter(
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
              BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      return BlindChickenFilterButton(
                        onOpen: () {
                          context.maybePop();
                        },
                        countProducts: initState.catalogInfo?.count ?? '',
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
