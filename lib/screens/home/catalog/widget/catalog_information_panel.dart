import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogInformationPanel extends StatelessWidget {
  const CatalogInformationPanel({
    super.key,
    required this.initState,
    required this.isBack,
  });

  final PreloadDataCompletedCatalogState initState;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    List<SectionItemDataModel> listPrev = initState.catalogInfo?.listPrev ?? [];
    List<SectionItemDataModel> listNext = initState.catalogInfo?.listNext ?? [];
    // List<SectionItemDataModel> listThis =
    //     initState.catalogInfo?.listThis ?? [];
    final constants = ConstatntsInfo();
    List<SectionItemDataModel> listItems = [
      ...listPrev,
      ...listNext,
    ];
    return Column(
      children: [
        if (initState.products.isNotEmpty &&
            (initState.catalogInfo?.breadcrumbs.isNotEmpty ?? false))
          Container(
            height: 50,
            padding: const EdgeInsets.only(
              left: 10.5,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: initState.catalogInfo?.breadcrumbs.map(
                    (item) {
                      return GestureDetector(
                        onTap: () {
                          if (item.name == 'Женщинам') {
                            context.navigateTo(
                              MainCategoryRoute(
                                title: 'Женщинам',
                                selectIndexType: 1,
                              ),
                            );
                          } else if (item.name == 'Мужчинам') {
                            context.navigateTo(
                              MainCategoryRoute(
                                title: 'Мужчинам',
                                selectIndexType: 2,
                              ),
                            );
                          } else if (item.name == 'Детям') {
                            context.navigateTo(
                              MainCategoryRoute(
                                title: 'Детям',
                                selectIndexType: 3,
                              ),
                            );
                          } else if (item.name == 'Бренды') {
                            context.read<BrandBloc>().add(
                                  const BrandEvent.getBrands(
                                    selectTypePeople: 0,
                                  ),
                                );
                            context.maybePop(const HomeAutoRouterRoute(
                              children: [
                                BrandsRoute(),
                              ],
                            ));
                          } else {
                            context.read<CatalogBloc>().add(
                                  CatalogEvent.getInfoProducts(
                                    path: item.value,
                                  ),
                                );
                            context.navigateTo(
                              CatalogRoute(
                                title: '',
                                url: item.value,
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: 20,
                          color: BlindChickenColors.backgroundColor,
                          margin: const EdgeInsets.only(right: 6),
                          alignment: Alignment.center,
                          child: Text(
                            item.name,
                            style: Theme.of(context).textTheme.displaySmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    },
                  ).toList() ??
                  [],
            ),
          ),
        if (initState.products.isNotEmpty)
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: 10.5,
              right: 30,
              bottom: 17.5,
            ),
            color: BlindChickenColors.backgroundColor,
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: (initState.catalogInfo?.h1 ?? '').replaceAll("\n", ""),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          height: 1.4,
                        ),
                  ),
                  TextSpan(
                    text: ' ${initState.catalogInfo?.count ?? ''}',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                        ),
                  ),
                  TextSpan(
                    text: ' товаров',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                        ),
                  ),
                ],
              ),
            ),
          ),
        if (initState.products.isNotEmpty && listItems.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(
              left: 10.5,
              right: 10.5,
            ),
            color: BlindChickenColors.backgroundColor,
            height: 35,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      context.read<CatalogBloc>().add(
                            CatalogEvent.getInfoProducts(
                              path: listItems[index].value,
                            ),
                          );
                    },
                    child: Container(
                      padding: listPrev.contains(listItems[index]) && isBack
                          ? const EdgeInsets.only(
                              right: 14,
                              top: 7,
                              bottom: 7,
                            )
                          : const EdgeInsets.symmetric(
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
                      child: Row(
                        children: [
                          if (listPrev.contains(listItems[index]) && isBack)
                            SvgPicture.asset(
                              'assets/icons/chevron-left.svg',
                            ),
                          Text(
                            listItems[index].name,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        if (initState.products.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(
              left: 10.5,
              right: 10.5,
            ),
            color: BlindChickenColors.backgroundColor,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.navigateTo(
                      SortRoute(
                        onChange: (value) {
                          context.maybePop();

                          context.read<CatalogBloc>().add(
                                CatalogEvent.sortProducts(value: value),
                              );
                        },
                        selectItem: initState.request.sort ?? '',
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        constants.listSort[initState.request.sort] ?? '',
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
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: BlindChickenColors.backgroundColor,
                                  height: 1,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        if (initState.allSelectFilter.isNotEmpty && initState.products.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            color: BlindChickenColors.backgroundColor,
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
                        right: initState.allSelectFilter.length - 1 != index ? 12 : 0,
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
          ),
      ],
    );
  }
}
