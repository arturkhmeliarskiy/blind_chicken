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
class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
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
              child: BlocBuilder<CatalogBloc, CatalogState>(
                builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (iniState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: iniState.filter.length,
                        itemBuilder: (context, index) {
                          return FilterItemCatalog(
                            selectFilter: iniState.selectFilter[index] ?? [],
                            item: iniState.filter[index].title,
                            onTap: () {
                              if (iniState.filter[index].isSearch) {
                                context.navigateTo(FilterSelectValueSearchRoute(
                                  index: index,
                                  title: iniState.filter[index].title,
                                  filterItems: iniState.filter[index].items,
                                  selectFilter: iniState.selectFilter[index] ?? [],
                                  onDelete: (indexItem) {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: (iniState.selectFilter[index] ?? [])[indexItem],
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
                                  onDelete: (indexItem) {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.deleteFilter(
                                            index: index,
                                            indexItem: indexItem,
                                            item: (iniState.selectFilter[index] ?? [])[indexItem],
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
