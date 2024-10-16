import 'dart:async';
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
class CatalogSearchResultScreen extends StatefulWidget {
  const CatalogSearchResultScreen({super.key});

  @override
  State<CatalogSearchResultScreen> createState() => _CatalogSearchResultScreenState();
}

class _CatalogSearchResultScreenState extends State<CatalogSearchResultScreen> {
  final ScrollController _scrollController = ScrollController();
  BlindChickenMessage message = BlindChickenMessage();
  final BlindChickenShowDialogError _blindChickenCatalogSearchProductShowDialogError =
      BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogCatalogSearchError = false;
  bool _isShowDialogShoppingCartError = false;
  bool isLoading = false;
  double _paginationPosition = 0.0;
  double _historyPosition = 0.0;
  int _currentPage = 1;
  double _boundaryOffset = 0.5;

  @override
  void didChangeDependencies() {
    final updateData = GetIt.I.get<UpdateDataService>();
    updateData.lastScreen = 'search_result';
    _scrollController.addListener(_loadMoreData);
    super.didChangeDependencies();
  }

  void _loadMoreData() async {
    context.read<SearchBloc>().add(
          SearchEvent.checkButtonTop(
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

      context.read<SearchBloc>().add(
            const SearchEvent.paginationProduct(),
          );
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
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        state.maybeMap(
          searchProductsResult: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogCatalogSearchError &&
                  typeError != 'выбрать фильтр' &&
                  typeError != 'удалить фильтр' &&
                  typeError != 'удалить фильтры из категории' &&
                  typeError != 'карточка товара в поиске' &&
                  typeError != 'описание товара в поиске' &&
                  typeError != 'выбор размера описание товара в поиске' &&
                  typeError != 'добавить товар в избранное в поиске' &&
                  typeError != 'удалить товар из избранного в поиске') {
                _isShowDialogCatalogSearchError = true;
                _blindChickenCatalogSearchProductShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
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
                      case 'результат поиска':
                        context.read<SearchBloc>().add(
                              SearchEvent.searchProfuctsInfo(
                                initState.query,
                              ),
                            );
                        break;
                      case 'выбор размера результаты поиска':
                        context.read<SearchBloc>().add(
                              SearchEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: 'Результаты поиска',
                              ),
                            );
                        break;
                      case 'выбор размера описание товара в результатах поиска':
                        context.read<SearchBloc>().add(
                              SearchEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: 'Описание товара в результатах поиска',
                              ),
                            );
                        break;
                      case 'удалить фильтр из результатов поиска':
                        context.read<SearchBloc>().add(
                              SearchEvent.deleteCatalogFilter(
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
                        break;
                      case 'добавить товар в избранное в результатах поиска':
                        final product = initState.favouriteProduct;
                        if (product != null) {
                          context.read<SearchBloc>().add(
                                SearchEvent.addFavouriteProduct(
                                  index: initState.indexProduct ?? 0,
                                  product: product,
                                  typeError: 'добавить товар в избранное в результатах поиска',
                                ),
                              );
                        }
                        break;
                      case 'удалить товар из избранного в результатах поиска':
                        context.read<SearchBloc>().add(
                              SearchEvent.deleteFavouriteProduct(
                                index: initState.indexProduct ?? 0,
                                typeError: 'удалить товар из избранного в результатах поиска',
                              ),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogCatalogSearchError && !(initState.isError ?? false)) {
                _isShowDialogCatalogSearchError = false;
                _blindChickenCatalogSearchProductShowDialogError.closeShowDialog();
              }
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenShowModalBottomSheetSearchScreen &&
                  !initState.isLoadGetSizeProduct &&
                  (initState.codeProduct?.isEmpty ?? true)) {
                _historyPosition = 0;
                Navigator.pop(context);
              }
            }
          },
          getSizeProduct: (initState) {
            if (!_isShowDialogCatalogSearchError) {
              final updateData = GetIt.I.get<UpdateDataService>();
              updateData.isOpenShowModalBottomSheetSearchScreen = true;
              showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return CatalogSizeProductInfo(
                    listSize: initState.listSize,
                    listSizeToSoppingCart: initState.listSizeToSoppingCart,
                    openSoppingCart: () {
                      Navigator.pop(context);
                      updateData.lastScreen = 'search_result';
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
                      context.read<SearchBloc>().add(
                            SearchEvent.addProductToSoppingCart(
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
                                searchQuery: initState.query,
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
                updateData.isOpenShowModalBottomSheetSearchScreen = false;
                if (message.isVisible) {
                  message.overlayEntry?.remove();
                  message.overlayEntry = null;
                }
              });
            }
          },
          addProductToSoppingCart: (initState) {
            context.read<SearchBloc>().add(
                  SearchEvent.addProductToSoppingCart(
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
                      searchQuery: initState.query,
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
                  !_isShowDialogCatalogSearchError &&
                  value.titleScreen == 'Результаты поиска') {
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
                      cacheExtent: _historyPosition,
                      children: [
                        const AppBarBlindChicken(),
                        BlocBuilder<SearchBloc, SearchState>(
                          builder: (context, state) {
                            return state.maybeMap(
                                searchProductsResult: (initState) {
                                  if (_scrollController.position.pixels == 0) {
                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                      _scrollController.jumpTo(_historyPosition);
                                    });
                                  }
                                  if (initState.offset == 1) {
                                    _paginationPosition = 0;
                                  }
                                  return GestureDetector(
                                    onHorizontalDragUpdate: (details) {},
                                    onHorizontalDragEnd: (DragEndDetails details) {
                                      if (details.velocity.pixelsPerSecond.dx > 0) {
                                        context.back();
                                      }
                                    },
                                    child: PopScope(
                                      canPop: false,
                                      onPopInvoked: (value) {
                                        context.read<SearchBloc>().add(
                                              SearchEvent.searchProfucts(initState.query),
                                            );
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 17.5,
                                              bottom: 14,
                                              left: 10.5,
                                              right: 10.5,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'По запросу «${initState.query}» найдено  ',
                                                    style: Theme.of(context).textTheme.titleSmall,
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '${initState.searchResultInfo?.count} товара'
                                                            .spaceSeparateNumbers(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          height: 1.1,
                                                        ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 10.5,
                                              right: 10.5,
                                              bottom: 10.5,
                                            ),
                                            height: 30,
                                            child: InkWell(
                                              onTap: () {
                                                context
                                                    .navigateTo(const CatalogSearchFiltersRoute());
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
                                                  BlocBuilder<SearchBloc, SearchState>(
                                                      builder: (context, state) {
                                                    return state.maybeMap(
                                                      searchProductsResult: (initState) {
                                                        if (initState.allSelectFilter.isNotEmpty) {
                                                          return Container(
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
                                                          );
                                                        } else {
                                                          return const SizedBox();
                                                        }
                                                      },
                                                      orElse: () => const SizedBox(),
                                                    );
                                                  })
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
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: List.generate(
                                                          initState.allSelectFilter.length,
                                                          (index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            context.read<SearchBloc>().add(
                                                                  SearchEvent.deleteCatalogFilter(
                                                                    key: initState
                                                                        .allSelectFilter[index]
                                                                        .keys
                                                                        .first,
                                                                    index: index,
                                                                    item: initState
                                                                        .allSelectFilter[index]
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
                                                              right:
                                                                  initState.allSelectFilter.length -
                                                                              1 !=
                                                                          index
                                                                      ? 12
                                                                      : 0,
                                                            ),
                                                            padding: const EdgeInsets.all(3.5),
                                                            height: 27,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  initState.allSelectFilter[index]
                                                                      .values.first.value,
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
                                            children: List.generate(
                                              initState.products.length,
                                              (index) {
                                                return CatalogCardItem(
                                                  isLike: initState.favouritesProductsId
                                                      .contains(initState.products[index].id),
                                                  onSelect: () {
                                                    context.read<SearchBloc>().add(
                                                          SearchEvent.getInfoProduct(
                                                            code: initState.products[index].id
                                                                .toString(),
                                                            titleScreen:
                                                                'Карточка товара в резльтате поиска',
                                                            typeAddProductToShoppingCart:
                                                                'Карточка товара',
                                                            identifierAddProductToShoppingCart: '1',
                                                            typeError: 'описание товара в поиске',
                                                          ),
                                                        );

                                                    context.navigateTo(
                                                      CatalogSearchCardInfoResultRoute(
                                                        isChildRoute: false,
                                                        item: initState.products[index],
                                                        isLike: initState.favouritesProductsId
                                                            .contains(initState.products[index].id),
                                                        listItems: initState.products,
                                                        favouritesProducts:
                                                            initState.favouritesProducts ?? [],
                                                      ),
                                                    );
                                                  },
                                                  imageUrl: initState.products[index].images[0],
                                                  brend: initState.products[index].brend,
                                                  category: initState.products[index].category,
                                                  yourPrice: initState.products[index].yourPrice
                                                      .toString(),
                                                  price: initState.products[index].price.toString(),
                                                  isYourPriceDisplayed: initState
                                                      .products[index].isYourPriceDisplayed,
                                                  maximumCashback:
                                                      initState.products[index].maximumCashback,
                                                  discount: initState.products[index].discount,
                                                  maximumPersonalDiscount: initState
                                                      .products[index].maximumPersonalDiscount,
                                                  isAuth: initState.isAuth,
                                                  onAddFavouriteProduct: () {
                                                    context.read<SearchBloc>().add(
                                                          SearchEvent.addFavouriteProduct(
                                                            product: initState.products[index],
                                                            index: initState.products[index].id,
                                                            typeError:
                                                                'добавить товар в избранное в результатах поиска',
                                                          ),
                                                        );
                                                  },
                                                  pb: initState.products[index].pb,
                                                  onDeleteFavouriteProduct: () {
                                                    context.read<SearchBloc>().add(
                                                          SearchEvent.deleteFavouriteProduct(
                                                            index: initState.products[index].id,
                                                            typeError:
                                                                'удалить товар из избранного в результатах поиска',
                                                          ),
                                                        );
                                                  },
                                                  isShop: initState.products[index].isShop,
                                                  onAddProductToSoppingCart: () {
                                                    context.read<SearchBloc>().add(
                                                          SearchEvent.getInfoProductSize(
                                                            code: initState.products[index].id
                                                                .toString(),
                                                            isShop:
                                                                initState.products[index].isShop,
                                                            titleScreen: 'Результаты поиска',
                                                          ),
                                                        );
                                                  },
                                                  listSize: initState.listSize,
                                                  isLoad: int.parse(initState.codeProduct ?? '0') ==
                                                          initState.products[index].id &&
                                                      initState.isLoadGetSizeProduct,
                                                  userDiscount: initState.userDiscount,
                                                  sizeProduct: const [],
                                                  promo: initState.products[index].promo,
                                                  promoValue: initState.products[index].promoValue,
                                                  images: initState.products[index].images,
                                                  video: initState.products[index].video,
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                orElse: () => const SizedBox());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      searchProductsResult: (initState) {
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
            BlocBuilder<SearchBloc, SearchState>(
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
                  searchProductsResult: (initState) {
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
    );
  }
}
