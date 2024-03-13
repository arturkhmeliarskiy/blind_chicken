import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_boutiques_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_images.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_products.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_variant_slider_images.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
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
  SkuProductDataModel _size = SkuProductDataModel(
    id: '',
    value: '',
  );
  bool _isSoppingCart = false;
  bool _isChildRoute = false;
  ScrollController? _controller;
  late ProductDataModel item;

  @override
  void initState() {
    _isChildRoute = widget.isChildRoute;
    item = widget.item;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ShoppingCardInfoScreen oldWidget) {
    _controller = ScrollController(initialScrollOffset: 0);
    item = widget.item;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          productsShoppingCart: (value) {
            if (value.listProductsCode.isEmpty) {
              context.popRoute();
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Stack(
          children: [
            Scaffold(
              body: SafeArea(
                  child: ListView(
                controller: _controller,
                children: [
                  const AppBarBlindChicken(),
                  BlocBuilder<ShoppingCartBloc, ShoppingCartState>(builder: (context, state) {
                    return state.maybeMap(
                      productsShoppingCart: (initState) {
                        final sky = initState.detailsProduct?.sku ?? [];
                        return Column(
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
                              addLike: () {
                                DetailProductDataModel? detailsProduct = initState.detailsProduct;
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
                                DetailProductDataModel? detailsProduct = initState.detailsProduct;
                                if (detailsProduct != null) {
                                  context.read<ShoppingCartBloc>().add(
                                        ShoppingCartEvent.deleteFavouriteProduct(
                                          index: detailsProduct.product.id,
                                        ),
                                      );
                                }
                              },
                              onTap: () {
                                context.pushRoute(
                                  CatalogPreviewImagesRoute(
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
                                  Text(
                                    initState.detailsProduct?.brand.n ?? '',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      shadows: [
                                        Shadow(
                                          color:
                                              BlindChickenColors.activeBorderTextField.withOpacity(
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
                                    style: Theme.of(context).textTheme.displayMedium,
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
                                          text: (initState.detailsProduct?.price.price ?? 0)
                                              .toString()
                                              .spaceSeparateNumbers(),
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      if (initState.detailsProduct?.product.isYourPriceDisplayed ??
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
                                                    text: (initState
                                                                .detailsProduct?.price.yourPrice ??
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
                                    discountVal: initState.detailsProduct?.price.discountVal ?? 0,
                                    bonusLoyal: initState.detailsProduct?.price.bonusLoyal ?? 0,
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
                                        initState.detailsProduct?.userBuyForNextDiscountVal ?? 0,
                                    pb: int.parse(initState.detailsProduct?.price.pb ?? '0'),
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
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                                  setState(() {
                                                    _size = value;
                                                  });
                                                  context.back();
                                                },
                                                listSizeProduct: sky,
                                                selectItem:
                                                    _size.value.isNotEmpty ? _size : sky.first,
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
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    left: 10.5,
                                                  ),
                                                  child: Text(
                                                    _size.value.isNotEmpty
                                                        ? _size.value
                                                        : (sky.isNotEmpty
                                                                ? sky
                                                                : [
                                                                    SkuProductDataModel(
                                                                      id: '',
                                                                      value: '',
                                                                    ),
                                                                  ])
                                                            .first
                                                            .value,
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
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
                                  BlindChickenButton(
                                    title:
                                        _isSoppingCart ? 'Перейти в корзину' : 'Добавить в корзину',
                                    onChenge: () {
                                      if (_isSoppingCart) {
                                        context.navigateTo(
                                          const ShoppingCartAutoRouterRoute(
                                            children: [
                                              ShoppingCartRoute(),
                                            ],
                                          ),
                                        );
                                        setState(() {
                                          _isSoppingCart = false;
                                        });
                                      } else {
                                        setState(() {
                                          _isSoppingCart = true;
                                        });

                                        context.read<ShoppingCartBloc>().add(
                                              ShoppingCartEvent.addProductToSoppingCart(
                                                item: BasketInfoItemDataModel(
                                                  code: (initState.detailsProduct?.code ?? 0)
                                                      .toString(),
                                                  sku: _size.value.isNotEmpty
                                                      ? _size.id
                                                      : sky.isNotEmpty
                                                          ? sky.first.id
                                                          : '',
                                                  count: 1,
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
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        CatalogVariantSliderImages(
                                          listOptionProduct: initState.detailsProduct?.option ?? [],
                                          onTap: (product) {
                                            // в боевой Api раскомментировать
                                            context.read<ShoppingCartBloc>().add(
                                                  ShoppingCartEvent.getInfoProduct(
                                                    code: product.id.toString(),
                                                  ),
                                                );

                                            final favouritesProductsId = initState
                                                .favouritesProducts
                                                .map((item) => item.id)
                                                .toList();

                                            context.pushRoute(
                                              ShoppingCardInfoRoute(
                                                isChildRoute: true,
                                                item: product,
                                                isLike: favouritesProductsId.contains(product.id),
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
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  CatalogDescriptionInfo(
                                    item: item,
                                    char: initState.detailsProduct?.char ?? [],
                                  ),
                                  BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                    builder: (context, state) {
                                      return state.maybeMap(
                                          productsShoppingCart: (initState) {
                                            if (initState.listProdcutsStyle.isNotEmpty) {
                                              return Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
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
                                                            ),
                                                          );
                                                    },
                                                    listProducts: initState.listProdcutsStyle,
                                                    favouritesProductsId:
                                                        initState.favouritesProductsId,
                                                    addLike: (index) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.addFavouriteProduct(
                                                              product: initState
                                                                  .listProdcutsStyle[index],
                                                              index: initState
                                                                  .listProdcutsStyle[index].id,
                                                            ),
                                                          );
                                                    },
                                                    deleteLike: (index) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent
                                                                .deleteFavouriteProduct(
                                                              index: initState
                                                                  .listProdcutsStyle[index].id,
                                                            ),
                                                          );
                                                    },
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
                                                            ),
                                                          );
                                                    },
                                                    listProducts: initState.listProdcutsAlso,
                                                    favouritesProductsId:
                                                        initState.favouritesProductsId,
                                                    addLike: (index) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.addFavouriteProduct(
                                                              product:
                                                                  initState.listProdcutsAlso[index],
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
                                                  sections: initState
                                                          .detailsProduct?.sections.first.list ??
                                                      [],
                                                  onTap: (path) {
                                                    context.read<CatalogBloc>().add(
                                                          CatalogEvent.getInfoProducts(
                                                            path: path,
                                                          ),
                                                        );
                                                    context.pushRoute(
                                                      HomeAutoRouterRoute(
                                                        children: [
                                                          CatalogRoute(title: ''),
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
                                                          ),
                                                        );
                                                  },
                                                  listProducts: initState.listProdcutsBrand,
                                                  favouritesProductsId:
                                                      initState.favouritesProductsId,
                                                  addLike: (index) {
                                                    context.read<ShoppingCartBloc>().add(
                                                          ShoppingCartEvent.addFavouriteProduct(
                                                            product:
                                                                initState.listProdcutsBrand[index],
                                                            index: initState
                                                                .listProdcutsBrand[index].id,
                                                          ),
                                                        );
                                                  },
                                                  deleteLike: (index) {
                                                    context.read<ShoppingCartBloc>().add(
                                                          ShoppingCartEvent.deleteFavouriteProduct(
                                                            index: initState
                                                                .listProdcutsBrand[index].id,
                                                          ),
                                                        );
                                                  },
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
      ),
    );
  }
}
