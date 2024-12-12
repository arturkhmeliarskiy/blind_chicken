import 'dart:async';
import 'dart:developer';

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

@RoutePage()
class FavouritesProductsScreen extends StatefulWidget {
  const FavouritesProductsScreen({super.key});

  @override
  State<FavouritesProductsScreen> createState() => _FavouritesProductsScreenState();
}

class _FavouritesProductsScreenState extends State<FavouritesProductsScreen> {
  bool isLoading = false;
  bool _isSwipe = true;
  final ScrollController _scrollController = ScrollController();
  BlindChickenMessage message = BlindChickenMessage();
  final BlindChickenShowDialogError _blindChickenFavouritesProductsShowDialogError =
      BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogFavouritesProductsError = false;
  bool _isShowDialogShoppingCartError = false;
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;
  int _currentPage = 1;
  double _boundaryOffset = 0.5;

  @override
  void initState() {
    final updateData = GetIt.I.get<UpdateDataService>();
    updateData.lastScreen = 'favourites_products';
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    context.read<FavouritesBloc>().add(
          FavouritesEvent.checkButtonTop(
            isButtonTop: _historyPosition > _scrollController.position.pixels &&
                _scrollController.position.pixels > 0,
          ),
        );

    bool isActive = (_scrollController.position.maxScrollExtent - 2500).toInt() >
            _paginationPosition.toInt() &&
        (_scrollController.position.maxScrollExtent - 2500).toInt() != _paginationPosition.toInt();
    //load more data
    if ((_scrollController.offset > _scrollController.position.maxScrollExtent * _boundaryOffset) &&
        isActive) {
      _paginationPosition = _scrollController.position.maxScrollExtent - 2500;
      _currentPage++;
      _boundaryOffset = 1 - 1 / (_currentPage * 2);

      log(_currentPage.toString());

      context.read<FavouritesBloc>().add(const FavouritesEvent.paginationProduct());
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
    return BlocListener<FavouritesBloc, FavouritesState>(
      listener: (context, state) {
        state.maybeMap(
          productsFavourites: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogFavouritesProductsError &&
                  typeError != 'выбрать фильтр' &&
                  typeError != 'удалить фильтр' &&
                  typeError != 'удалить фильтры из категории' &&
                  typeError != 'информация о товаре') {
                _isShowDialogFavouritesProductsError = true;
                _blindChickenFavouritesProductsShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
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
                        error: (value) {
                          return Text(
                            'Повторить',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: BlindChickenColors.backgroundColor,
                                ),
                            textAlign: TextAlign.center,
                          );
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  onRepeatRequest: () {
                    switch (typeError) {
                      case 'удалить фильтр из избранного':
                        context.read<FavouritesBloc>().add(
                              FavouritesEvent.deleteCatalogFilter(
                                key: initState.keyFilterCatalog ?? 0,
                                index: initState.indexFileter ?? 0,
                                item: initState.itemFileter ??
                                    FilterItemDataModel(
                                      id: 0,
                                      value: '',
                                      typeFilter: '',
                                    ),
                              ),
                            );
                      case 'добавить товар в избранное':
                        final product = initState.favouriteProduct;
                        if (product != null) {
                          context.read<FavouritesBloc>().add(
                                FavouritesEvent.addFavouriteProduct(
                                  index: initState.indexProduct ?? 0,
                                  product: product,
                                ),
                              );
                        }
                        break;
                      case 'удалить товар из избранного':
                        context.read<FavouritesBloc>().add(
                              FavouritesEvent.deleteFavouriteProduct(
                                index: initState.indexProduct ?? 0,
                              ),
                            );
                        break;
                      case 'выбор размера избранное':
                        context.read<FavouritesBloc>().add(
                              FavouritesEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: initState.titleScreen ?? '',
                              ),
                            );

                        break;
                      case 'выбор размера карточка товара в избранном':
                        context.read<FavouritesBloc>().add(
                              FavouritesEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: 'Карточка товара в избранном',
                              ),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogFavouritesProductsError) {
                _isShowDialogFavouritesProductsError = false;
                _blindChickenFavouritesProductsShowDialogError.closeShowDialog();
              }
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenShowModalBottomSheetFavouritesScreen &&
                  !initState.isLoadGetSizeProduct &&
                  (initState.codeProduct?.isEmpty ?? true)) {
                _historyPosition = 0;
                Navigator.pop(context);
              }
            }
          },
          error: (value) {
            if (!_isShowDialogFavouritesProductsError) {
              _isShowDialogFavouritesProductsError = true;
              _blindChickenFavouritesProductsShowDialogError.openShowDualog(
                context: context,
                errorMessage: value.errorMessage,
                widget: BlocBuilder<FavouritesBloc, FavouritesState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadErrorButton: (value) {
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
                      },
                      error: (value) {
                        return Text(
                          'Повторить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                          textAlign: TextAlign.center,
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
                onRepeatRequest: () {
                  final updateData = GetIt.I.get<UpdateDataService>();
                  if (!updateData.isOpenShowModalBottomSheetFavouritesScreen) {
                    Timer(const Duration(milliseconds: 150), () {
                      context.read<FavouritesBloc>().add(const FavouritesEvent.preloadData());
                      context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                    });
                  }
                },
              );
            }
          },
          getSizeProduct: (initState) {
            if (!_isShowDialogFavouritesProductsError) {
              final updateData = GetIt.I.get<UpdateDataService>();
              updateData.isOpenShowModalBottomSheetFavouritesScreen = true;
              showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return CatalogSizeProductInfo(
                    listSize: initState.listSize,
                    listSizeToSoppingCart: initState.listSizeToSoppingCart,
                    openSoppingCart: () {
                      Navigator.pop(context);
                      updateData.lastScreen = 'favourites_products';
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
                      context.read<FavouritesBloc>().add(
                            FavouritesEvent.addProductToSoppingCart(
                              code: int.parse(initState.code),
                              size: size,
                              titleScreen: initState.titleScreen,
                              typeAddProductToShoppingCart: 'Выпадающий список',
                              identifierAddProductToShoppingCart: '2',
                            ),
                          );

                      context.read<ShoppingCartBloc>().add(
                            ShoppingCartEvent.addOtherProductToSoppingCart(
                              item: BasketInfoItemDataModel(
                                code: initState.code,
                                sku: size.id,
                                count: 1,
                                titleScreen: initState.titleScreen,
                                searchQuery: '',
                                typeAddProductToShoppingCart: 'Выпадающий список',
                                identifierAddProductToShoppingCart: '2',
                                sectionCategoriesPath: [],
                                productCategoriesPath: [],
                              ),
                            ),
                          );
                      message.showOverlay(
                        context,
                        'Размер ${size.value} добавлен в корзину',
                        () {
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
                updateData.isOpenShowModalBottomSheetFavouritesScreen = false;
                if (message.isVisible) {
                  message.overlayEntry?.remove();
                  message.overlayEntry = null;
                }
              });
            }
          },
          addProductToSoppingCart: (initState) {
            context.read<FavouritesBloc>().add(
                  FavouritesEvent.addProductToSoppingCart(
                    code: int.parse(initState.code),
                    titleScreen: initState.titleScreen,
                    typeAddProductToShoppingCart: 'Кнопка',
                    identifierAddProductToShoppingCart: '1',
                  ),
                );

            context.read<ShoppingCartBloc>().add(
                  ShoppingCartEvent.addOtherProductToSoppingCart(
                    item: BasketInfoItemDataModel(
                      code: initState.code,
                      sku: '',
                      count: 1,
                      titleScreen: initState.titleScreen,
                      searchQuery: '',
                      typeAddProductToShoppingCart: 'Кнопка',
                      identifierAddProductToShoppingCart: '1',
                      sectionCategoriesPath: [],
                      productCategoriesPath: [],
                    ),
                  ),
                );
            BlindChickenMessage().showOverlay(
              context,
              'Добавлено в корзину',
              () {
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
      child: BlocListener<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          state.maybeMap(
            error: (value) {
              if (!_isShowDialogShoppingCartError &&
                  !_isShowDialogFavouritesProductsError &&
                  value.titleScreen == 'Избранное') {
                _isShowDialogShoppingCartError = true;
                _blindChickenShoppingCartShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: value.errorMessage,
                  widget: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loadErrorButton: (value) {
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
                        },
                        error: (value) {
                          return Text(
                            'Повторить',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: BlindChickenColors.backgroundColor,
                                ),
                            textAlign: TextAlign.center,
                          );
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  onRepeatRequest: () {
                    context.read<ShoppingCartBloc>().add(
                          ShoppingCartEvent.addOtherProductToSoppingCart(
                            item: BasketInfoItemDataModel(
                              titleScreen: value.item?.titleScreen ?? '',
                              typeAddProductToShoppingCart:
                                  value.item?.typeAddProductToShoppingCart ?? '',
                              searchQuery: '',
                              identifierAddProductToShoppingCart: '2',
                              sectionCategoriesPath: value.item?.sectionCategoriesPath ?? [],
                              productCategoriesPath: value.item?.productCategoriesPath ?? [],
                              code: value.item?.code ?? '',
                              sku: value.item?.sku ?? '',
                              count: 1,
                            ),
                          ),
                        );
                  },
                );
              }
            },
            productsShoppingCart: (value) {
              if (_isShowDialogShoppingCartError) {
                _isShowDialogShoppingCartError = false;
                _blindChickenShoppingCartShowDialogError.closeShowDialog();
              }
            },
            orElse: () {},
          );
        },
        child: GestureDetector(
          onVerticalDragUpdate: (details) {},
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              context.back();
              setState(() {
                _isSwipe = true;
              });
            }
          },
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SafeArea(
                    child: Scaffold(
                      body: PopScope(
                        canPop: false,
                        onPopInvoked: (value) {
                          if (_isSwipe) {
                            context.back();
                          }
                        },
                        child: ListView(
                          controller: _scrollController,
                          children: [
                            const AppBarBlindChicken(),
                            const SizedBox(
                              height: 17.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.5,
                                right: 10.5,
                              ),
                              child: Text(
                                'Избранное',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            BlocBuilder<FavouritesBloc, FavouritesState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                    productsFavourites: (initState) {
                                      if (_scrollController.position.pixels == 0) {
                                        WidgetsBinding.instance.addPostFrameCallback((_) {
                                          _scrollController.jumpTo(_historyPosition);
                                        });
                                      }
                                      if (initState.offset == 1) {
                                        _paginationPosition = 0;
                                      }
                                      return initState.favouritesProducts.isEmpty &&
                                              initState.selectFilter.isEmpty
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                top: 14.0,
                                                left: 10.5,
                                                right: 10.5,
                                              ),
                                              child: Text(
                                                'В избранном пока пусто.',
                                                style: Theme.of(context).textTheme.displayMedium,
                                              ),
                                            )
                                          : Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 10.5,
                                                    right: 10.5,
                                                  ),
                                                  height: 60,
                                                  child: InkWell(
                                                    onTap: () {
                                                      context.navigateTo(
                                                          const FavouritesFiltersRoute());
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
                                                                fontWeight: FontWeight.w700,
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
                                                              borderRadius:
                                                                  BorderRadius.circular(8),
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
                                                          )
                                                        else
                                                          const SizedBox(),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if (initState.allSelectFilter.isNotEmpty)
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                      left: 12,
                                                      right: 12,
                                                    ),
                                                    height: 34,
                                                    child: ListView(
                                                        scrollDirection: Axis.horizontal,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment.start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: List.generate(
                                                                initState.allSelectFilter.length,
                                                                (index) {
                                                              return InkWell(
                                                                onTap: () {
                                                                  context
                                                                      .read<FavouritesBloc>()
                                                                      .add(
                                                                        FavouritesEvent
                                                                            .deleteCatalogFilter(
                                                                          key: initState
                                                                              .allSelectFilter[
                                                                                  index]
                                                                              .keys
                                                                              .first,
                                                                          index: index,
                                                                          item: initState
                                                                              .allSelectFilter[
                                                                                  index]
                                                                              .values
                                                                              .first,
                                                                        ),
                                                                      );
                                                                },
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    color: BlindChickenColors
                                                                        .backgroundColorItemFilter,
                                                                    borderRadius:
                                                                        BorderRadius.circular(4),
                                                                  ),
                                                                  margin: EdgeInsets.only(
                                                                    right: initState.allSelectFilter
                                                                                    .length -
                                                                                1 !=
                                                                            index
                                                                        ? 12
                                                                        : 0,
                                                                  ),
                                                                  padding:
                                                                      const EdgeInsets.all(3.5),
                                                                  height: 27,
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        initState
                                                                            .allSelectFilter[index]
                                                                            .values
                                                                            .first
                                                                            .value,
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
                                                  )
                                                else
                                                  const SizedBox(),
                                                Wrap(
                                                  children: List.generate(
                                                      initState.favouritesProducts.length, (index) {
                                                    return CatalogCardItem(
                                                      isLike: true,
                                                      pb: initState.favouritesProducts[index].pb,
                                                      images: initState
                                                          .favouritesProducts[index].images,
                                                      onSelect: () {
                                                        context.navigateTo(
                                                          CardInfoRoute(
                                                            isChildRoute: false,
                                                            isLike: true,
                                                            listItems: initState.favouritesProducts,
                                                            favouritesProducts: initState.favouritesProducts,
                                                            codeProduct:
                                                            initState.favouritesProducts[index].id.toString(),
                                                            product: initState.favouritesProducts[index],
                                                            titleScreen: 'Карточка товара в избранном',
                                                          ),
                                                        );
                                                      },
                                                      isYourPriceDisplayed: initState
                                                          .favouritesProducts[index]
                                                          .isYourPriceDisplayed,
                                                      imageUrl: initState
                                                          .favouritesProducts[index].images[0],
                                                      brend:
                                                          initState.favouritesProducts[index].brend,
                                                      category: initState
                                                          .favouritesProducts[index].category,
                                                      yourPrice: initState
                                                          .favouritesProducts[index].yourPrice
                                                          .toString(),
                                                      maximumCashback: initState
                                                          .favouritesProducts[index]
                                                          .maximumCashback,
                                                      discount: initState
                                                          .favouritesProducts[index].discount,
                                                      maximumPersonalDiscount: initState
                                                          .favouritesProducts[index]
                                                          .maximumPersonalDiscount,
                                                      isAuth: initState.isAuth,
                                                      price: initState
                                                          .favouritesProducts[index].price
                                                          .toString(),
                                                      onAddFavouriteProduct: () {
                                                        context.read<FavouritesBloc>().add(
                                                              FavouritesEvent.addFavouriteProduct(
                                                                product: initState
                                                                    .favouritesProducts[index],
                                                                index: initState
                                                                    .favouritesProducts[index].id,
                                                              ),
                                                            );
                                                      },
                                                      onDeleteFavouriteProduct: () {
                                                        context.read<FavouritesBloc>().add(
                                                              FavouritesEvent
                                                                  .deleteFavouriteProduct(
                                                                index: initState
                                                                    .favouritesProducts[index].id,
                                                              ),
                                                            );
                                                        context.read<CatalogBloc>().add(
                                                            const CatalogEvent
                                                                .updateFavouritesProducts());
                                                      },
                                                      isShop: initState
                                                          .favouritesProducts[index].isShop,
                                                      onAddProductToSoppingCart: () {
                                                        context.read<FavouritesBloc>().add(
                                                              FavouritesEvent.getInfoProductSize(
                                                                code: initState
                                                                    .favouritesProducts[index].id
                                                                    .toString(),
                                                                isShop: initState
                                                                    .favouritesProducts[index]
                                                                    .isShop,
                                                                titleScreen: 'Избранное',
                                                              ),
                                                            );
                                                      },
                                                      listSize: initState.listSize,
                                                      userDiscount: initState.userDiscount,
                                                      isLoad:
                                                          int.parse(initState.codeProduct ?? '0') ==
                                                                  initState
                                                                      .favouritesProducts[index]
                                                                      .id &&
                                                              initState.isLoadGetSizeProduct,
                                                      sizeProduct: const [],
                                                      promo:
                                                          initState.favouritesProducts[index].promo,
                                                      promoValue: initState
                                                          .favouritesProducts[index].promoValue,
                                                      video:
                                                          initState.favouritesProducts[index].video,
                                                      goSwipeBack: () {
                                                        context.back();
                                                        setState(() {
                                                          _isSwipe = true;
                                                        });
                                                      },
                                                    );
                                                  }),
                                                ),
                                              ],
                                            );
                                    },
                                    orElse: () => const SizedBox());
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<FavouritesBloc, FavouritesState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        productsFavourites: (initState) {
                          if (initState.isButtonTop && !isLoading) {
                            return GestureDetector(
                              onTap: () {
                                _scrollController.jumpTo(0.0);
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
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  )
                ],
              ),
              BlocBuilder<FavouritesBloc, FavouritesState>(
                builder: (context, state) {
                  return state.maybeMap(
                    load: (value) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      );
                    },
                    productsFavourites: (initState) {
                      return isLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                                backgroundColor: Colors.grey.shade400,
                              ),
                            )
                          : const SizedBox();
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
