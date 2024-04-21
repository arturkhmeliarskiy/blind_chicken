import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_boutiques_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_product_info%20copy.dart';
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
class CatalogCardInfoScreen extends StatefulWidget {
  const CatalogCardInfoScreen({
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
  State<CatalogCardInfoScreen> createState() => _CatalogCardInfoScreenState();
}

class _CatalogCardInfoScreenState extends State<CatalogCardInfoScreen> {
  SkuProductDataModel _size = SkuProductDataModel(
    id: '',
    value: '',
  );
  bool _isChildRoute = false;
  late ProductDataModel item;
  @override
  void initState() {
    _isChildRoute = widget.isChildRoute;
    item = widget.item;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CatalogCardInfoScreen oldWidget) {
    item = widget.item;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (value) {
            if (value.listProductsCode.isEmpty) {
              context.back();
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: Stack(
        children: [
          Scaffold(
            body: SafeArea(
                child: ListView(
              children: [
                const AppBarBlindChicken(),
                BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      final sky = initState.detailsProduct?.sku ?? [];
                      return PopScope(
                        canPop: false,
                        onPopInvoked: (value) {
                          if (initState.listProductsCode.isNotEmpty) {
                            context.read<CatalogBloc>().add(const CatalogEvent.goBackProductInfo());
                          } else {
                            context.back();
                          }
                        },
                        child: initState.isError ?? false
                            ? const SizedBox()
                            : Column(
                                children: [
                                  CatalogSliderImages(
                                    listImages: initState.detailsProduct?.photo.mini ?? [],
                                    isLike: initState.favouritesProductsId
                                        .contains(initState.detailsProduct?.code ?? 0),
                                    goBotton: () {
                                      context
                                          .read<CatalogBloc>()
                                          .add(const CatalogEvent.goBackProductInfo());
                                    },
                                    isZoom: false,
                                    addLike: () {
                                      DetailProductDataModel? detailsProduct =
                                          initState.detailsProduct;
                                      if (detailsProduct != null) {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.addFavouriteProduct(
                                                product: detailsProduct.product,
                                                index: detailsProduct.code,
                                              ),
                                            );
                                      }
                                    },
                                    deleteLike: () {
                                      DetailProductDataModel? detailsProduct =
                                          initState.detailsProduct;
                                      if (detailsProduct != null) {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.deleteFavouriteProduct(
                                                index: detailsProduct.code,
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
                                                CatalogCardInfoRoute(
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
                                                color: BlindChickenColors.activeBorderTextField
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
                                                        .headline2
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
                                          userBuyForNextDiscount:
                                              initState.detailsProduct?.userBuyForNextDiscount ?? 0,
                                          userNextDiscount:
                                              initState.detailsProduct?.userNextDiscount ?? 0,
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
                                          isAuth: initState.isAuth,
                                          userBuyForNextDiscountVal:
                                              initState.detailsProduct?.userBuyForNextDiscountVal ??
                                                  0,
                                          pb: int.parse(initState.detailsProduct?.price.pb ?? '0'),
                                          successfullyLogin: () {
                                            Navigator.of(context, rootNavigator: true).pop();
                                            context.read<CatalogBloc>().add(
                                                  CatalogEvent.getInfoProduct(
                                                    code: (initState.detailsProduct?.code ?? 0)
                                                        .toString(),
                                                    isUpdate: true,
                                                  ),
                                                );
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
                                                        setState(() {
                                                          _size = value;
                                                        });
                                                        context.read<CatalogBloc>().add(
                                                              CatalogEvent
                                                                  .checkProductToSoppingCart(
                                                                      size: _size),
                                                            );
                                                        context.back();
                                                      },
                                                      listSizeProduct: sky,
                                                      selectItem: _size.value.isNotEmpty
                                                          ? _size
                                                          : sky.first,
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
                                        BlindChickenButton(
                                          title: (initState.isSoppingCart ?? false)
                                              ? 'Перейти в корзину'
                                              : 'Добавить в корзину',
                                          onChenge: () {
                                            if (initState.isSoppingCart ?? false) {
                                              context.navigateTo(
                                                const ShoppingCartAutoRouterRoute(
                                                  children: [
                                                    ShoppingCartRoute(),
                                                  ],
                                                ),
                                              );
                                            } else {
                                              context.read<CatalogBloc>().add(
                                                    const CatalogEvent.addProductToSoppingCart(),
                                                  );
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
                                                  context.read<CatalogBloc>().add(
                                                        CatalogEvent.getInfoProduct(
                                                          code: product.id.toString(),
                                                        ),
                                                      );

                                                  context.pushRoute(
                                                    CatalogCardInfoRoute(
                                                      isChildRoute: true,
                                                      item: product,
                                                      isLike: initState.favouritesProductsId
                                                          .contains(product.id),
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
                                        if (initState.detailsProduct?.text.isNotEmpty ?? false)
                                          Column(
                                            children: [
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              CatalogDescriptionProductInfo(
                                                text: initState.detailsProduct?.text ?? '',
                                              )
                                            ],
                                          ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        CatalogDescriptionInfo(
                                          item: item,
                                          char: initState.detailsProduct?.char ?? [],
                                        ),
                                        BlocBuilder<CatalogBloc, CatalogState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                                preloadDataCompleted: (initState) {
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
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent.getInfoProduct(
                                                                    code: value.id.toString(),
                                                                  ),
                                                                );
                                                          },
                                                          listProducts: initState.listProdcutsStyle,
                                                          favouritesProductsId:
                                                              initState.favouritesProductsId,
                                                          addLike: (index) {
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent.addFavouriteProduct(
                                                                    product: initState
                                                                        .listProdcutsStyle[index],
                                                                    index: initState
                                                                        .listProdcutsStyle[index]
                                                                        .id,
                                                                  ),
                                                                );
                                                          },
                                                          deleteLike: (index) {
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent
                                                                      .deleteFavouriteProduct(
                                                                    index: initState
                                                                        .listProdcutsStyle[index]
                                                                        .id,
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
                                        BlocBuilder<CatalogBloc, CatalogState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                                preloadDataCompleted: (initState) {
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
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent.getInfoProduct(
                                                                    code: value.id.toString(),
                                                                  ),
                                                                );
                                                          },
                                                          listProducts: initState.listProdcutsAlso,
                                                          favouritesProductsId:
                                                              initState.favouritesProductsId,
                                                          addLike: (index) {
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent.addFavouriteProduct(
                                                                    product: initState
                                                                        .listProdcutsAlso[index],
                                                                    index: initState
                                                                        .listProdcutsAlso[index].id,
                                                                  ),
                                                                );
                                                          },
                                                          deleteLike: (index) {
                                                            context.read<CatalogBloc>().add(
                                                                  CatalogEvent
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
                                                    return const SizedBox(
                                                      height: 20,
                                                    );
                                                  }
                                                },
                                                orElse: () => const SizedBox());
                                          },
                                        ),
                                        BlocBuilder<CatalogBloc, CatalogState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                              preloadDataCompleted: (initState) {
                                                if (initState.detailsProduct?.sections.isNotEmpty ??
                                                    false) {
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
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
                                                          context.read<CatalogBloc>().add(
                                                                CatalogEvent.getInfoProducts(
                                                                  path: path,
                                                                ),
                                                              );
                                                          Timer(const Duration(milliseconds: 10),
                                                              () {
                                                            context.pushRoute(
                                                              CatalogRoute(
                                                                title: '',
                                                                url: path,
                                                              ),
                                                            );
                                                          });
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
                                        BlocBuilder<CatalogBloc, CatalogState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                              preloadDataCompleted: (initState) {
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
                                                          context.read<CatalogBloc>().add(
                                                                CatalogEvent.getInfoProduct(
                                                                  code: value.id.toString(),
                                                                ),
                                                              );
                                                        },
                                                        listProducts: initState.listProdcutsBrand,
                                                        favouritesProductsId:
                                                            initState.favouritesProductsId,
                                                        addLike: (index) {
                                                          context.read<CatalogBloc>().add(
                                                                CatalogEvent.addFavouriteProduct(
                                                                  product: initState
                                                                      .listProdcutsBrand[index],
                                                                  index: initState
                                                                      .listProdcutsBrand[index].id,
                                                                ),
                                                              );
                                                        },
                                                        deleteLike: (index) {
                                                          context.read<CatalogBloc>().add(
                                                                CatalogEvent.deleteFavouriteProduct(
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
                              ),
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                })
              ],
            )),
          ),
          BlocBuilder<CatalogBloc, CatalogState>(
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
                preloadDataCompleted: (value) {
                  if (value.isError ?? false) {
                    return BlindChickenErrorInfo(
                      errorMessage: value.errorMessage ?? '',
                      onRepeatRequest: () {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProduct(
                                code: value.listProductsCode.last,
                                isUpdate: true,
                              ),
                            );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
