import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({
    super.key,
    this.isBack = true,
    this.onBack,
    required this.title,
    required this.url,
    this.isNotification = false,
    this.sort = '',
    this.filterSelect = '',
  });

  final bool isBack;
  final bool isNotification;
  final VoidCallback? onBack;
  final String title;
  final String filterSelect;
  final String url;
  final String sort;

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final constants = ConstatntsInfo();
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  bool isButtonTop = false;
  double _historyPosition = 0.0;

  @override
  void didChangeDependencies() {
    if (widget.isNotification) {
      Timer(const Duration(milliseconds: 150), () {
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProductsPushNotification(
                path: widget.url,
                sort: widget.sort,
                filterSelect: widget.filterSelect,
              ),
            );
      });
    }
    _scrollController.addListener(_loadMoreData);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CatalogScreen oldWidget) {
    _scrollController.jumpTo(_historyPosition);
    super.didUpdateWidget(oldWidget);
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        isButtonTop = true;
      });
    } else {
      setState(() {
        isButtonTop = false;
      });
    }
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        isLoading = true;
      });
      await Future<void>.delayed(const Duration(seconds: 2), () {
        setState(() {
          isLoading = false;
          context.read<CatalogBloc>().add(const CatalogEvent.paginationProduct());
        });
      });
    }
    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isUpdateVersionApp && initState.isNotification) {
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenUpdateModalWindow) {
                Navigator.of(context, rootNavigator: true).pop();
              }

              BlindChickenMessage().showOverlay(context, 'Доступно обновление приложения', () {
                if (Platform.isAndroid || Platform.isIOS) {
                  final appId =
                      Platform.isAndroid ? 'YOUR_ANDROID_PACKAGE_ID' : 'com.slepayakurica.app';
                  final url = Uri.parse(
                    Platform.isAndroid
                        ? "market://details?id=$appId"
                        : "https://apps.apple.com/ru/app/id6471508431",
                  );
                  launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              });
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.back();
          }
        },
        child: PopScope(
          onPopInvoked: (value) {
            final onBack = widget.onBack;
            if (onBack != null) {
              onBack();
            }
          },
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Scaffold(
                    backgroundColor: BlindChickenColors.backgroundColor,
                    body: SafeArea(
                      child: ListView(
                        controller: _scrollController,
                        children: [
                          const AppBarBlindChicken(),
                          BlocBuilder<CatalogBloc, CatalogState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                preloadDataCompleted: (initState) {
                                  List<SectionItemDataModel> listPrev =
                                      initState.catalogInfo?.listPrev ?? [];
                                  List<SectionItemDataModel> listNext =
                                      initState.catalogInfo?.listNext ?? [];
                                  // List<SectionItemDataModel> listThis =
                                  //     initState.catalogInfo?.listThis ?? [];
                                  List<SectionItemDataModel> listItems = [
                                    ...listPrev,
                                    ...listNext,
                                  ];
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if (initState.products.isNotEmpty)
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
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displaySmall,
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
                                          width: MediaQuery.of(context).size.width - 30,
                                          margin: const EdgeInsets.only(
                                            left: 10.5,
                                            bottom: 10,
                                          ),
                                          alignment: Alignment.topLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '${initState.catalogInfo?.h1 ?? ''} ',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                        height: 1.4,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: '   ${initState.catalogInfo?.count ?? ''}',
                                                  style: Theme.of(context).textTheme.displaySmall,
                                                ),
                                                TextSpan(
                                                  text: ' товаров',
                                                  style: Theme.of(context).textTheme.displaySmall,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (initState.products.isNotEmpty)
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 10.5,
                                            right: 10.5,
                                          ),
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
                                                              path: listItems[index].value),
                                                        );
                                                  },
                                                  child: Container(
                                                    padding: listPrev.contains(listItems[index]) &&
                                                            widget.isBack
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
                                                      color: BlindChickenColors
                                                          .backgroundColorItemFilter,
                                                      borderRadius: BorderRadius.circular(
                                                        4,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        if (listPrev.contains(listItems[index]) &&
                                                            widget.isBack)
                                                          SvgPicture.asset(
                                                            'assets/icons/chevron-left.svg',
                                                          ),
                                                        Text(
                                                          listItems[index].name,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium,
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
                                          height: 60,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  context.navigateTo(
                                                    SortRoute(
                                                      onChange: (value) {
                                                        context.popRoute();

                                                        context.read<CatalogBloc>().add(
                                                              CatalogEvent.sortProducts(
                                                                  value: value),
                                                            );
                                                      },
                                                      selectItem: initState.request.sort ?? '',
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      constants.listSort[initState.request.sort] ??
                                                          '',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium
                                                          ?.copyWith(
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
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium
                                                          ?.copyWith(
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
                                                          color: BlindChickenColors
                                                              .activeBorderTextField,
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        child: Text(
                                                          initState.allSelectFilter.length
                                                              .toString(),
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                color: BlindChickenColors
                                                                    .backgroundColor,
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
                                      if (initState.allSelectFilter.isNotEmpty &&
                                          initState.products.isNotEmpty)
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 12,
                                            right: 12,
                                          ),
                                          height: 34,
                                          child:
                                              ListView(scrollDirection: Axis.horizontal, children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: List.generate(
                                                  initState.allSelectFilter.length, (index) {
                                                return InkWell(
                                                  onTap: () {
                                                    context.read<CatalogBloc>().add(
                                                          CatalogEvent.deleteCatalogFilter(
                                                            key: initState
                                                                .allSelectFilter[index].keys.first,
                                                            index: index,
                                                            item: initState.allSelectFilter[index]
                                                                .values.first,
                                                          ),
                                                        );
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: BlindChickenColors
                                                          .backgroundColorItemFilter,
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                      right: initState.allSelectFilter.length - 1 !=
                                                              index
                                                          ? 12
                                                          : 0,
                                                    ),
                                                    padding: const EdgeInsets.all(3.5),
                                                    height: 27,
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          initState.allSelectFilter[index].values
                                                              .first.value,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displaySmall,
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
                                      Wrap(
                                        children: List.generate(initState.products.length, (index) {
                                          return CatalogCardItem(
                                            isLike: initState.favouritesProductsId
                                                .contains(initState.products[index].id),
                                            onAddFavouriteProduct: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.addFavouriteProduct(
                                                      index: initState.products[index].id,
                                                      product: initState.products[index],
                                                    ),
                                                  );
                                            },
                                            onDeleteFavouriteProduct: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.deleteFavouriteProduct(
                                                      index: initState.products[index].id,
                                                    ),
                                                  );
                                            },
                                            onSelect: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProduct(
                                                      code: initState.products[index].id.toString(),
                                                    ),
                                                  );
                                              context.navigateTo(
                                                CatalogCardInfoRoute(
                                                  item: initState.products[index],
                                                  isLike: initState.favouritesProductsId
                                                      .contains(initState.products[index].id),
                                                  listItems: initState.products,
                                                  favouritesProducts: initState.favouritesProducts,
                                                  isChildRoute: false,
                                                ),
                                              );
                                            },
                                            yourPrice:
                                                initState.products[index].yourPrice.toString(),
                                            imageUrl: initState.products[index].images[0],
                                            brend: initState.products[index].brend,
                                            category: initState.products[index].category,
                                            price: initState.products[index].price.toString(),
                                            isYourPriceDisplayed:
                                                initState.products[index].isYourPriceDisplayed,
                                            maximumCashback: initState
                                                .products[index].maximumCashback
                                                .toString(),
                                            pb: initState.products[index].pb,
                                          );
                                        }),
                                      ),
                                    ],
                                  );
                                },
                                orElse: () => const SizedBox(),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  if (isButtonTop && !isLoading)
                    GestureDetector(
                      onTap: () {
                        _scrollController.jumpTo(0.0);
                        setState(() {
                          isButtonTop = false;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        margin: const EdgeInsets.only(left: 15, bottom: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/chevron-top.svg',
                        ),
                      ),
                    )
                  else
                    const SizedBox()
                ],
              ),
              BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                return state.maybeMap(
                  load: (value) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        backgroundColor: Colors.grey.shade400,
                      ),
                    );
                  },
                  preloadDataCompleted: (initState) {
                    return initState.products.isEmpty
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Text(
                                'Товары не найдены',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          )
                        : isLoading
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: Colors.black,
                                  backgroundColor: Colors.grey.shade400,
                                ),
                              )
                            : initState.isError ?? false
                                ? BlindChickenErrorInfo(
                                    errorMessage: initState.errorMessage ?? '',
                                    onRepeatRequest: () {
                                      context.read<CatalogBloc>().add(
                                            CatalogEvent.getInfoProducts(
                                              path: widget.url,
                                            ),
                                          );
                                    },
                                  )
                                : const SizedBox();
                  },
                  orElse: () => const SizedBox(),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
