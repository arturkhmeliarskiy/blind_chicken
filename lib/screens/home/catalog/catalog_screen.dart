import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_size_product_info.dart';
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
  BlindChickenMessage message = BlindChickenMessage();
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  bool isButtonTop = false;
  bool _isSwipe = true;
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
    final updateData = GetIt.I.get<UpdateDataService>();

    if (updateData.lastScreen == 'shopping_cart' &&
        !updateData.isOpenShowModalBottomSheetCatalogScreen) {
      context.read<CatalogBloc>().add(
            const CatalogEvent.updateInfoProducts(),
          );
    }

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
            final updateData = GetIt.I.get<UpdateDataService>();
            if (updateData.isOpenShowModalBottomSheetCatalogScreen &&
                !initState.isLoadGetSizeProduct &&
                (initState.codeProduct?.isEmpty ?? true)) {
              _historyPosition = 0;
              Navigator.pop(context);
            }
          },
          getSizeProduct: (initState) {
            final updateData = GetIt.I.get<UpdateDataService>();
            updateData.isOpenShowModalBottomSheetCatalogScreen = true;
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return CatalogSizeProductInfo(
                  listSize: initState.listSize,
                  listSizeToSoppingCart: initState.listSizeToSoppingCart,
                  openSoppingCart: () {
                    updateData.lastScreen = 'shopping_cart';
                    Navigator.pop(context);
                    Timer(const Duration(milliseconds: 150), () {
                      context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
                    });
                    context.navigateTo(
                      const ShoppingCartAutoRouterRoute(
                        children: [
                          ShoppingCartRoute(),
                        ],
                      ),
                    );
                  },
                  addProductToSoppingCart: (size) {
                    context.read<CatalogBloc>().add(
                          CatalogEvent.addProductToSoppingCart(code: int.parse(initState.code)),
                        );
                    context.read<ShoppingCartBloc>().add(
                          ShoppingCartEvent.addOtherProductToSoppingCart(
                            item: BasketInfoItemDataModel(
                              code: initState.code,
                              sku: size.id,
                              count: 1,
                            ),
                          ),
                        );
                    message.showOverlay(
                      context,
                      'Размер ${size.value} добавлен в корзину',
                      () {
                        updateData.lastScreen = 'shopping_cart';
                        Timer(const Duration(milliseconds: 150), () {
                          context
                              .read<ShoppingCartBloc>()
                              .add(const ShoppingCartEvent.preloadData());
                        });
                        context.navigateTo(
                          const ShoppingCartAutoRouterRoute(
                            children: [
                              ShoppingCartRoute(),
                            ],
                          ),
                        );
                        Navigator.pop(context);
                      },
                      boxShadow: const BoxShadow(),
                      time: 5,
                    );
                  },
                );
              },
            ).whenComplete(() {
              final updateData = GetIt.I.get<UpdateDataService>();
              updateData.isOpenShowModalBottomSheetCatalogScreen = false;

              if (message.isVisible) {
                message.overlayEntry?.remove();
                message.overlayEntry = null;
              }
            });
          },
          addProductToSoppingCart: (initState) {
            context.read<CatalogBloc>().add(
                  CatalogEvent.addProductToSoppingCart(code: int.parse(initState.code)),
                );

            context.read<ShoppingCartBloc>().add(
                  ShoppingCartEvent.addOtherProductToSoppingCart(
                    item: BasketInfoItemDataModel(
                      code: initState.code,
                      sku: '',
                      count: 1,
                    ),
                  ),
                );
            BlindChickenMessage().showOverlay(
              context,
              'Добавлено в корзину',
              () {
                final updateData = GetIt.I.get<UpdateDataService>();
                updateData.lastScreen = 'shopping_cart';
                Timer(const Duration(milliseconds: 150), () {
                  context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
                });
                context.navigateTo(
                  const ShoppingCartAutoRouterRoute(
                    children: [
                      ShoppingCartRoute(),
                    ],
                  ),
                );
              },
              time: 5,
            );
          },
          openSoppingCart: (value) {
            final updateData = GetIt.I.get<UpdateDataService>();
            updateData.lastScreen = 'shopping_cart';
            Timer(const Duration(milliseconds: 150), () {
              context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
            });
            context.navigateTo(
              const ShoppingCartAutoRouterRoute(
                children: [
                  ShoppingCartRoute(),
                ],
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
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
                              return GestureDetector(
                                onHorizontalDragUpdate: (details) {},
                                onHorizontalDragEnd: (DragEndDetails details) {
                                  if (details.velocity.pixelsPerSecond.dx > 0) {
                                    context.read<CatalogBloc>().add(
                                          const CatalogEvent.goBackCatalogInfo(),
                                        );
                                    if (initState.listCatalogPath.isEmpty ||
                                        initState.listCatalogPath.length == 1) {
                                      context.back();
                                    }
                                    setState(() {
                                      _isSwipe = false;
                                    });
                                    log((details.velocity.pixelsPerSecond.dx).toString());
                                  }
                                },
                                child: PopScope(
                                  canPop: false,
                                  onPopInvoked: (value) {
                                    final onBack = widget.onBack;
                                    if (onBack != null) {
                                      onBack();
                                    }
                                    if (_isSwipe) {
                                      context
                                          .read<CatalogBloc>()
                                          .add(const CatalogEvent.goBackCatalogInfo());
                                    }
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                                          context
                                                              .popRoute(const HomeAutoRouterRoute(
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
                                            bottom: 17.5,
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
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.copyWith(
                                                        color: BlindChickenColors
                                                            .activeBorderTextField
                                                            .withOpacity(0.7),
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' товаров',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.copyWith(
                                                        color: BlindChickenColors
                                                            .activeBorderTextField
                                                            .withOpacity(0.7),
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
                                            maximumCashback:
                                                initState.products[index].maximumCashback,
                                            maximumPersonalDiscount:
                                                initState.products[index].maximumPersonalDiscount,
                                            isAuth: initState.isAuth,
                                            userDiscount: initState.userDiscount,
                                            pb: initState.products[index].pb,
                                            isShop: initState.products[index].isShop,
                                            onAddProductToSoppingCart: () {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProductSize(
                                                      code: initState.products[index].id.toString(),
                                                      isShop: initState.products[index].isShop,
                                                    ),
                                                  );
                                            },
                                            listSize: initState.listSize,
                                            isLoad: int.parse(initState.codeProduct ?? '0') ==
                                                    initState.products[index].id &&
                                                initState.isLoadGetSizeProduct,
                                          );
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
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
    );
  }
}
