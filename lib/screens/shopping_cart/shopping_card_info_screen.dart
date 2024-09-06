import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_boutiques_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_size_product_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_images.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_products.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_variant_slider_images.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class ShoppingCardInfoScreen extends StatefulWidget {
  const ShoppingCardInfoScreen({
    super.key,
    required this.item,
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
  });

  final ProductDataModel item;
  final List<ProductDataModel> listItems;
  final List<ProductDataModel> favouritesProducts;
  final bool isLike;
  final bool isChildRoute;

  @override
  State<ShoppingCardInfoScreen> createState() => _ShoppingCardInfoScreenState();
}

class _ShoppingCardInfoScreenState extends State<ShoppingCardInfoScreen> {
  final ScrollController _scrollController = ScrollController();
  BlindChickenMessage message = BlindChickenMessage();
  bool _isShoppingCartButton = true;
  bool _isSwipe = true;
  bool _isChildRoute = false;
  late ProductDataModel item;

  @override
  void initState() {
    final sharedService = GetIt.I.get<SharedPreferencesService>();
    sharedService.setString(
      key: SharedPrefKeys.lastScreen,
      value: 'shopping_card_info',
    );
    _isChildRoute = widget.isChildRoute;
    item = widget.item;
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    final width = MediaQuery.of(context).size.width;
    double imageHeight = (width * 4 / 3);
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      if ((_scrollController.position.pixels + imageHeight) > (imageHeight + 242) &&
          (_scrollController.position.pixels) < (imageHeight + 440)) {
        setState(() {
          _isShoppingCartButton = false;
        });
      } else {
        setState(() {
          _isShoppingCartButton = true;
        });
      }
    } else {
      if ((_scrollController.position.pixels) > (imageHeight + 80) &&
          (_scrollController.position.pixels) < (imageHeight + 460)) {
        setState(() {
          _isShoppingCartButton = false;
        });
      } else {
        setState(() {
          _isShoppingCartButton = true;
        });
      }
    }
  }

  @override
  void didUpdateWidget(covariant ShoppingCardInfoScreen oldWidget) {
    item = widget.item;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          productsShoppingCart: (value) {
            final updateData = GetIt.I.get<UpdateDataService>();
            if (value.listProductsCode.isEmpty &&
                !updateData.isOpenShowModalBottomSheetShoppingCardInfoScreen &&
                !value.isBlocBackBotton) {
              context.back();
            }
          },
          getSizeProduct: (initState) {
            final updateData = GetIt.I.get<UpdateDataService>();
            updateData.isOpenShowModalBottomSheetShoppingCardInfoScreen = true;
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
                    context.read<ShoppingCartBloc>().add(
                          ShoppingCartEvent.addProductToSoppingCart(
                            item: BasketInfoItemDataModel(
                              code: initState.code,
                              sku: size.id,
                              skuName: size.value,
                              count: 1,
                              titleScreen: 'Карточка товара в корзине',
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
              updateData.isOpenShowModalBottomSheetShoppingCardInfoScreen = false;

              if (message.isVisible) {
                message.overlayEntry?.remove();
                message.overlayEntry = null;
              }
            });
          },
          addProductToSoppingCart: (initState) {
            context.read<ShoppingCartBloc>().add(
                  ShoppingCartEvent.addProductToSoppingCart(
                    item: BasketInfoItemDataModel(
                      code: initState.code,
                      sku: '',
                      count: 1,
                      titleScreen: 'Карточка товара в корзине',
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
      child: GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            context.read<ShoppingCartBloc>().add(
                  const ShoppingCartEvent.goBackProductInfo(),
                );
            setState(() {
              _isSwipe = false;
            });
            log((details.velocity.pixelsPerSecond.dx).toString());
          }
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              children: [
                Scaffold(
                  body: SafeArea(
                      child: ListView(
                    controller: _scrollController,
                    children: [
                      const AppBarBlindChicken(),
                      BlocBuilder<ShoppingCartBloc, ShoppingCartState>(builder: (context, state) {
                        return state.maybeMap(
                          productsShoppingCart: (initState) {
                            final sky = initState.detailsProduct?.sku ?? [];
                            return PopScope(
                              canPop: false,
                              onPopInvoked: (value) {
                                if (_isSwipe) {
                                  if (initState.listProductsCode.isNotEmpty) {
                                    context
                                        .read<ShoppingCartBloc>()
                                        .add(const ShoppingCartEvent.goBackProductInfo());
                                  } else {
                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                      context.back();
                                    });
                                  }
                                }
                              },
                              child: Column(
                                children: [
                                  CatalogSliderImages(
                                    listImages: initState.detailsProduct?.photo.mini ?? [],
                                    isLike: initState.favouritesProductsId
                                        .contains(initState.detailsProduct?.code ?? 0),
                                    goBotton: () {
                                      context
                                          .read<ShoppingCartBloc>()
                                          .add(const ShoppingCartEvent.goBackProductInfo());
                                    },
                                    isZoom: false,
                                    addLike: () {
                                      DetailProductDataModel? detailsProduct =
                                          initState.detailsProduct;
                                      if (detailsProduct != null) {
                                        context.read<ShoppingCartBloc>().add(
                                              ShoppingCartEvent.addFavouriteProduct(
                                                product: detailsProduct.product,
                                                index: detailsProduct.product.id,
                                              ),
                                            );
                                      }
                                    },
                                    deleteLike: () {
                                      DetailProductDataModel? detailsProduct =
                                          initState.detailsProduct;
                                      if (detailsProduct != null) {
                                        context.read<ShoppingCartBloc>().add(
                                              ShoppingCartEvent.deleteFavouriteProduct(
                                                index: detailsProduct.product.id,
                                              ),
                                            );
                                      }
                                    },
                                    onTap: (index) {
                                      context.pushRoute(
                                        CatalogPreviewImagesRoute(
                                          selectIndex: index,
                                          listImages: initState.detailsProduct?.photo.full ?? [],
                                          goBotton: () {},
                                          goBottonInfoProduct: () {
                                            context.back();
                                            if (_isChildRoute) {
                                              context.navigateTo(
                                                ShoppingCardInfoRoute(
                                                  isChildRoute: true,
                                                  item: widget.item,
                                                  isLike: widget.isLike,
                                                  listItems: widget.listItems,
                                                  favouritesProducts: widget.favouritesProducts,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      );
                                    },
                                    goSwipeBack: () {
                                      context
                                          .read<ShoppingCartBloc>()
                                          .add(const ShoppingCartEvent.goBackProductInfo());
                                    },
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    initState.detailsProduct?.brand.n ?? '',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                      shadows: [
                                                        Shadow(
                                                          color: BlindChickenColors
                                                              .activeBorderTextField
                                                              .withOpacity(
                                                            0.2,
                                                          ),
                                                          offset: const Offset(0, 1),
                                                          blurRadius: 1,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 9,
                                                  ),
                                                  Text(
                                                    initState.detailsProduct?.name ?? '',
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Share.share(
                                                  'https://slepayakurica.ru/product/${initState.detailsProduct?.code ?? 0}/',
                                                  subject: 'Слепая курица',
                                                );
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                color: Colors.transparent,
                                                child: const Icon(
                                                  Icons.share_outlined,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        Row(
                                          children: [
                                            if (!(initState
                                                    .detailsProduct?.product.isYourPriceDisplayed ??
                                                false))
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/icons/lightning.svg',
                                                    height: 14,
                                                    width: 14,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                ],
                                              ),
                                            RichText(
                                              text: TextSpan(
                                                text: (initState.detailsProduct?.price.p ?? 0)
                                                    .toString()
                                                    .spaceSeparateNumbers(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      fontWeight: initState.detailsProduct?.product
                                                                  .isYourPriceDisplayed ??
                                                              false
                                                          ? FontWeight.w400
                                                          : FontWeight.w700,
                                                    ),
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                    text: ' ₽',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (int.parse(
                                                    initState.detailsProduct?.price.pb ?? '0') >
                                                int.parse(initState.detailsProduct?.price.p ?? '0'))
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  Text(
                                                    (initState.detailsProduct?.price.pb ?? '0')
                                                        .spaceSeparateNumbers(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineLarge
                                                        ?.copyWith(
                                                          decoration: TextDecoration.lineThrough,
                                                        ),
                                                  ),
                                                  const Text(
                                                    ' ₽',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 13,
                                                      decoration: TextDecoration.lineThrough,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            if (initState
                                                    .detailsProduct?.product.isYourPriceDisplayed ??
                                                false)
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/icons/lightning.svg',
                                                    height: 14,
                                                    width: 14,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      text: 'Ваша цена ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium
                                                          ?.copyWith(
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: (initState.detailsProduct?.price
                                                                      .yourPrice ??
                                                                  0)
                                                              .toString()
                                                              .spaceSeparateNumbers(),
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: ' ₽',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        CatalogCashbackInfo(
                                          cashback: initState.detailsProduct?.price.cashback ?? 0,
                                          bonusYear: initState.detailsProduct?.price.bonusYear ?? 0,
                                          discountVal:
                                              initState.detailsProduct?.price.discountVal ?? 0,
                                          bonusLoyal:
                                              initState.detailsProduct?.price.bonusLoyal ?? 0,
                                          bonusGift: initState.detailsProduct?.price.bonusGift ?? 0,
                                          userDiscount: initState.detailsProduct?.userDiscount ?? 0,
                                          p: int.parse(initState.detailsProduct?.price.p ?? '0'),
                                          pc: int.parse(initState.detailsProduct?.price.pc ?? '0'),
                                          userNextDiscount:
                                              initState.detailsProduct?.userNextDiscount ?? 0,
                                          isAuth: initState.isAuth,
                                          userBuyForNextDiscount:
                                              initState.detailsProduct?.userBuyForNextDiscount ?? 0,
                                          userBuyForNextDiscountVal:
                                              initState.detailsProduct?.userBuyForNextDiscountVal ??
                                                  0,
                                          pb: int.parse(initState.detailsProduct?.price.pb ?? '0'),
                                          successfullyLogin: () {
                                            Navigator.of(context, rootNavigator: true).pop();
                                            context.read<ShoppingCartBloc>().add(
                                                  ShoppingCartEvent.getInfoProduct(
                                                    code: (initState.detailsProduct?.code ?? 0)
                                                        .toString(),
                                                    isUpdate: true,
                                                    titleScreen: 'Описание товара в корзине',
                                                    typeAddProductToShoppingCart: 'Кнопка',
                                                    identifierAddProductToShoppingCart: '4',
                                                  ),
                                                );
                                          },
                                          onBack: (buildContext) {
                                            buildContext.back();
                                          },
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        if (sky.isNotEmpty)
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Размер',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  context.navigateTo(
                                                    CatalogSizeProductRoute(
                                                      onChange: (value) {
                                                        if (value.id.contains('-') &&
                                                            value.id.length > 10) {
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent.changeSizeProduct(
                                                                  selectSizeProduct: value,
                                                                ),
                                                              );
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent
                                                                    .checkProductToSoppingCart(
                                                                  size: value,
                                                                ),
                                                              );
                                                          context.back();
                                                        } else {
                                                          context.back();
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent.getInfoProduct(
                                                                  code: value.id.toString(),
                                                                  size: value,
                                                                  titleScreen:
                                                                      'Описание товара в корзине',
                                                                  typeAddProductToShoppingCart:
                                                                      'Кнопка',
                                                                  identifierAddProductToShoppingCart:
                                                                      '4',
                                                                ),
                                                              );
                                                        }
                                                      },
                                                      listSizeProduct: sky,
                                                      selectItem:
                                                          initState.selectSizeProduct ?? sky.first,
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  height: 37,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: BlindChickenColors.borderTextField,
                                                      ),
                                                      borderRadius: BorderRadius.circular(
                                                        4,
                                                      )),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(
                                                          left: 10.5,
                                                        ),
                                                        child: Text(
                                                          initState.selectSizeProduct?.value ??
                                                              sky.first.value,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(
                                                          right: 8,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          'assets/icons/chevron-bottom.svg',
                                                          height: 17.5,
                                                          width: 17.5,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        BlindChickenButtonShoppingCart(
                                          title: initState.isShoppingCart ?? false
                                              ? 'Перейти в корзину'
                                              : 'Добавить в корзину',
                                          onChenge: () {
                                            if (initState.isShoppingCart ?? false) {
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
                                            } else {
                                              context.read<ShoppingCartBloc>().add(
                                                    const ShoppingCartEvent
                                                        .addProductToSoppingCartInfo(),
                                                  );
                                              context.read<ShoppingCartBloc>().add(
                                                    ShoppingCartEvent.addProductToSoppingCart(
                                                      item: BasketInfoItemDataModel(
                                                        code: (initState.detailsProduct?.code ?? 0)
                                                            .toString(),
                                                        sku: initState.selectSizeProduct?.id ??
                                                            sky.first.id,
                                                        skuName:
                                                            initState.selectSizeProduct?.value ??
                                                                sky.first.value,
                                                        count: 1,
                                                        typeAddProductToShoppingCart: 'Кнопка',
                                                        titleScreen: 'Карточка товара в корзине',
                                                        searchQuery: '',
                                                        identifierAddProductToShoppingCart: '1',
                                                        productCategoriesPath: [],
                                                        sectionCategoriesPath: [],
                                                      ),
                                                    ),
                                                  );
                                            }
                                          },
                                        ),
                                        const SizedBox(
                                          height: 32,
                                        ),
                                        Text(
                                          'Получение',
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        CatalogBoutiquesInfo(
                                          listBoutiques: initState.detailsProduct?.stock ?? [],
                                        ),
                                        const SizedBox(
                                          height: 3.5,
                                        ),
                                        Text(
                                          'Бесплатная доставка по России от 10 000 ₽',
                                          style: Theme.of(context).textTheme.displayMedium,
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        if (initState.detailsProduct?.option.isNotEmpty ?? false)
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Варианты',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              CatalogVariantSliderImages(
                                                listOptionProduct:
                                                    initState.detailsProduct?.option ?? [],
                                                onTap: (product) {
                                                  // в боевой Api раскомментировать
                                                  context.read<ShoppingCartBloc>().add(
                                                        ShoppingCartEvent.getInfoProduct(
                                                          code: product.id.toString(),
                                                          titleScreen:
                                                              'Описание товара в корзине (Варианты)',
                                                          typeAddProductToShoppingCart:
                                                              'Карточка товара',
                                                          identifierAddProductToShoppingCart: '1',
                                                        ),
                                                      );

                                                  final favouritesProductsId = initState
                                                      .favouritesProducts
                                                      .map((item) => item.id)
                                                      .toList();

                                                  context.navigateTo(
                                                    ShoppingCardInfoRoute(
                                                      isChildRoute: true,
                                                      item: product,
                                                      isLike:
                                                          favouritesProductsId.contains(product.id),
                                                      listItems: widget.listItems,
                                                      favouritesProducts: widget.favouritesProducts,
                                                    ),
                                                  );
                                                },
                                              ),
                                              const SizedBox(
                                                height: 40,
                                              ),
                                            ],
                                          ),
                                        Text(
                                          'О товаре',
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        CatalogDescriptionInfo(
                                          char: initState.detailsProduct?.char ?? [],
                                        ),
                                        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                                productsShoppingCart: (initState) {
                                                  if (initState.listProdcutsComplect.isNotEmpty) {
                                                    return Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 40,
                                                        ),
                                                        Text(
                                                          'Носят вместе',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 10.5,
                                                        ),
                                                        CatalogSliderProducts(
                                                          onSelectProduct: (value) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent.getInfoProduct(
                                                                    code: value.id.toString(),
                                                                    titleScreen:
                                                                        'Описание товара в корзине (Носят вместе)',
                                                                    typeAddProductToShoppingCart:
                                                                        'Карточка товара',
                                                                    identifierAddProductToShoppingCart:
                                                                        '1',
                                                                  ),
                                                                );
                                                          },
                                                          listProducts:
                                                              initState.listProdcutsComplect,
                                                          favouritesProductsId:
                                                              initState.favouritesProductsId,
                                                          addLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .addFavouriteProduct(
                                                                    product: initState
                                                                            .listProdcutsComplect[
                                                                        index],
                                                                    index: initState
                                                                        .listProdcutsComplect[index]
                                                                        .id,
                                                                  ),
                                                                );
                                                          },
                                                          deleteLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .deleteFavouriteProduct(
                                                                    index: initState
                                                                        .listProdcutsComplect[index]
                                                                        .id,
                                                                  ),
                                                                );
                                                          },
                                                          isAuth: initState.isAuth,
                                                        )
                                                      ],
                                                    );
                                                  } else {
                                                    return const SizedBox();
                                                  }
                                                },
                                                orElse: () => const SizedBox());
                                          },
                                        ),
                                        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                                productsShoppingCart: (initState) {
                                                  if (initState.listProdcutsStyle.isNotEmpty) {
                                                    return Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        if (initState.listProdcutsComplect.isEmpty)
                                                          const SizedBox(
                                                            height: 40,
                                                          ),
                                                        Text(
                                                          'Рекомендации стилистов',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 10.5,
                                                        ),
                                                        CatalogSliderProducts(
                                                          onSelectProduct: (value) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent.getInfoProduct(
                                                                    code: value.id.toString(),
                                                                    titleScreen:
                                                                        'Описание товара в корзине (Рекомендации стилистов)',
                                                                    typeAddProductToShoppingCart:
                                                                        'Карточка товара',
                                                                    identifierAddProductToShoppingCart:
                                                                        '1',
                                                                  ),
                                                                );
                                                          },
                                                          listProducts: initState.listProdcutsStyle,
                                                          favouritesProductsId:
                                                              initState.favouritesProductsId,
                                                          addLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .addFavouriteProduct(
                                                                    product: initState
                                                                        .listProdcutsStyle[index],
                                                                    index: initState
                                                                        .listProdcutsStyle[index]
                                                                        .id,
                                                                  ),
                                                                );
                                                          },
                                                          deleteLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .deleteFavouriteProduct(
                                                                    index: initState
                                                                        .listProdcutsStyle[index]
                                                                        .id,
                                                                  ),
                                                                );
                                                          },
                                                          isAuth: initState.isAuth,
                                                        )
                                                      ],
                                                    );
                                                  } else {
                                                    return const SizedBox();
                                                  }
                                                },
                                                orElse: () => const SizedBox());
                                          },
                                        ),
                                        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                                productsShoppingCart: (initState) {
                                                  if (initState.listProdcutsAlso.isNotEmpty) {
                                                    return Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        if (initState
                                                                .listProdcutsComplect.isEmpty &&
                                                            initState.listProdcutsStyle.isEmpty)
                                                          const SizedBox(
                                                            height: 40,
                                                          ),
                                                        Text(
                                                          'Смотрите также',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                fontWeight: FontWeight.w700,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 10.5,
                                                        ),
                                                        CatalogSliderProducts(
                                                          onSelectProduct: (value) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent.getInfoProduct(
                                                                    code: value.id.toString(),
                                                                    titleScreen:
                                                                        'Описание товара в корзине (Смотрите также)',
                                                                    typeAddProductToShoppingCart:
                                                                        'Карточка товара',
                                                                    identifierAddProductToShoppingCart:
                                                                        '1',
                                                                  ),
                                                                );
                                                          },
                                                          listProducts: initState.listProdcutsAlso,
                                                          favouritesProductsId:
                                                              initState.favouritesProductsId,
                                                          addLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .addFavouriteProduct(
                                                                    product: initState
                                                                        .listProdcutsAlso[index],
                                                                    index: initState
                                                                        .listProdcutsAlso[index].id,
                                                                  ),
                                                                );
                                                          },
                                                          deleteLike: (index) {
                                                            context.read<ShoppingCartBloc>().add(
                                                                  ShoppingCartEvent
                                                                      .deleteFavouriteProduct(
                                                                    index: initState
                                                                        .listProdcutsAlso[index].id,
                                                                  ),
                                                                );
                                                          },
                                                          isAuth: initState.isAuth,
                                                        )
                                                      ],
                                                    );
                                                  } else {
                                                    return const SizedBox();
                                                  }
                                                },
                                                orElse: () => const SizedBox());
                                          },
                                        ),
                                        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                              productsShoppingCart: (initState) {
                                                if (initState.detailsProduct?.sections.isNotEmpty ??
                                                    false) {
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 40,
                                                      ),
                                                      Text(
                                                        'С этим товаром смотрят',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10.5,
                                                      ),
                                                      CatalogCategoryInfo(
                                                        sections: initState.detailsProduct?.sections
                                                                .first.list ??
                                                            [],
                                                        onTap: (path) {
                                                          Timer(
                                                            const Duration(milliseconds: 30),
                                                            () {
                                                              context.read<CatalogBloc>().add(
                                                                    CatalogEvent.getInfoProducts(
                                                                      path: path,
                                                                      isCleanHistory: true,
                                                                    ),
                                                                  );
                                                            },
                                                          );
                                                          context.navigateTo(
                                                            HomeAutoRouterRoute(
                                                              children: [
                                                                CatalogRoute(
                                                                  title: '',
                                                                  url: path,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      const SizedBox(
                                                        height: 40,
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return const SizedBox();
                                                }
                                              },
                                              orElse: () => const SizedBox(),
                                            );
                                          },
                                        ),
                                        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                              productsShoppingCart: (initState) {
                                                if (initState.listProdcutsBrand.isNotEmpty) {
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Товары бренда',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10.5,
                                                      ),
                                                      CatalogSliderProducts(
                                                        onSelectProduct: (value) {
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent.getInfoProduct(
                                                                  code: value.id.toString(),
                                                                  titleScreen:
                                                                      'Описание товара в корзине (Товары бренда)',
                                                                  typeAddProductToShoppingCart:
                                                                      'Карточка товара',
                                                                  identifierAddProductToShoppingCart:
                                                                      '1',
                                                                ),
                                                              );
                                                        },
                                                        listProducts: initState.listProdcutsBrand,
                                                        favouritesProductsId:
                                                            initState.favouritesProductsId,
                                                        addLike: (index) {
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent
                                                                    .addFavouriteProduct(
                                                                  product: initState
                                                                      .listProdcutsBrand[index],
                                                                  index: initState
                                                                      .listProdcutsBrand[index].id,
                                                                ),
                                                              );
                                                        },
                                                        deleteLike: (index) {
                                                          context.read<ShoppingCartBloc>().add(
                                                                ShoppingCartEvent
                                                                    .deleteFavouriteProduct(
                                                                  index: initState
                                                                      .listProdcutsBrand[index].id,
                                                                ),
                                                              );
                                                        },
                                                        isAuth: initState.isAuth,
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return const SizedBox();
                                                }
                                              },
                                              orElse: () => const SizedBox(),
                                            );
                                          },
                                        ),
                                        const SizedBox(
                                          height: 80,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      })
                    ],
                  )),
                ),
                BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
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
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              ],
            ),
            BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
              builder: (context, state) {
                return state.maybeMap(
                  productsShoppingCart: (initState) {
                    if (_isShoppingCartButton) {
                      return BlindChickenTitleButton(
                        title: (initState.isShoppingCartDetailsProduct ?? false)
                            ? 'Перейти в корзину'
                            : 'Добавить в корзину',
                        onChange: () {
                          if (!initState.isLoadGetSizeProduct) {
                            context.read<ShoppingCartBloc>().add(
                                  ShoppingCartEvent.getInfoProductSize(
                                    code: (initState.detailsProduct?.code ?? 0).toString(),
                                    isShop: initState.isShoppingCart ?? false,
                                  ),
                                );
                          }
                        },
                        isLoad: initState.isLoadGetSizeProduct,
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
      ),
    );
  }
}
