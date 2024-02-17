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
class CatalogCardInfoScreen extends StatefulWidget {
  const CatalogCardInfoScreen({
    super.key,
    required this.item,
    required this.isLike,
    required this.addLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.deleteLike,
    required this.isChildRoute,
  });

  final VoidCallback addLike;
  final VoidCallback deleteLike;
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
  bool _isSoppingCart = false;
  bool _isChildRoute = false;
  ScrollController? _controller;
  late ProductDataModel item;
  // final List<String> _listSizeProduct = [];
  List<Map> listBoutiques = [
    {
      'address': 'Москва, ТЦ Афимолл Сити, 2 этаж',
      'size': '52 / 22 / 145',
    },
    {
      'address': 'Москва, ул. Малая Бронная, 15',
      'size': '52 / 22 / 145',
    },
  ];

  @override
  void initState() {
    // for (int i = 0; i < widget.item.size.length; i++) {
    //   _size = '$_size ${i == 0 ? '' : '/ '}${widget.item.size[i]}';
    // }
    // _listSizeProduct.add(_size);
    // _listSizeProduct.addAll([' 53 / 19 / 145']);
    _isChildRoute = widget.isChildRoute;
    item = widget.item;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CatalogCardInfoScreen oldWidget) {
    _controller = ScrollController(initialScrollOffset: 0);
    item = widget.item;
    super.didUpdateWidget(oldWidget);
  }

  final categories = [
    'Женская оптика',
    'Женские очки Saint Laurent',
    'Женские оправы',
    'Женские солнцезащитные очки',
    'Женские оправы',
  ];

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
                BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      final sky = initState.detailsProduct?.sku ?? [];
                      return Column(
                        children: [
                          CatalogSliderImages(
                            listImages: initState.detailsProduct?.photo.mini ?? [],
                            isLike: widget.isLike,
                            goBotton: () {
                              context.popRoute();
                            },
                            deleteLike: widget.deleteLike,
                            addLike: widget.addLike,
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
                                          addLike: () {
                                            context.read<CatalogBloc>().add(
                                                  CatalogEvent.addFavouriteProduct(
                                                    product: widget.item,
                                                    index: widget.item.id,
                                                  ),
                                                );
                                          },
                                          deleteLike: () {
                                            context.read<CatalogBloc>().add(
                                                  CatalogEvent.deleteFavouriteProduct(
                                                    index: widget.item.id,
                                                  ),
                                                );
                                          },
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
                                        color: BlindChickenColors.activeBorderTextField.withOpacity(
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
                                  initState.detailsProduct?.category.n ?? '',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: (initState.detailsProduct?.price.price ?? 0)
                                            .toString()
                                            .spaceSeparateNumbers(),
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w400,
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
                                        text: 'Ваша цена за ',
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: (initState.detailsProduct?.price.yourPrice ?? 0)
                                                .toString()
                                                .spaceSeparateNumbers(),
                                            style:
                                                Theme.of(context).textTheme.displayMedium?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                          ),
                                          TextSpan(
                                            text: ' ₽',
                                            style:
                                                Theme.of(context).textTheme.displayMedium?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                CatalogCashbackInfo(
                                  cashback:
                                      (initState.detailsProduct?.price.cashback ?? 0).toString(),
                                  bonusYear:
                                      (initState.detailsProduct?.price.bonusYear ?? 0).toString(),
                                  discountVal:
                                      (initState.detailsProduct?.price.discountVal ?? 0).toString(),
                                  bonusLoyal:
                                      (initState.detailsProduct?.price.bonusLoyal ?? 0).toString(),
                                  bonusGift:
                                      (initState.detailsProduct?.price.bonusGift ?? 0).toString(),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Размер',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                          context.popRoute();
                                        },
                                        listSizeProduct: sky,
                                        selectItem: _size.value.isNotEmpty ? _size : sky.first,
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
                                            style: Theme.of(context).textTheme.displayMedium,
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
                                BlindChickenButton(
                                  title:
                                      _isSoppingCart ? 'Перейти в корзину' : 'Добавить в карзину',
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
                                              item: ShoppingCartDataModel(
                                                product: ProductDataModel(
                                                  id: initState.detailsProduct?.code ?? 0,
                                                  title: initState.detailsProduct?.text ?? '',
                                                  catrgory:
                                                      initState.detailsProduct?.category.n ?? '',
                                                  size: [],
                                                  price: initState.detailsProduct?.price.price ?? 0,
                                                  yourPrice: 0,
                                                  brend: initState.detailsProduct?.brand.n ?? '',
                                                  lensDiameter: 0,
                                                  templeLength: 0,
                                                  country: '',
                                                  images:
                                                      initState.detailsProduct?.photo.mini ?? [],
                                                  variants: [],
                                                  maximumCashback: 0,
                                                  maximumPersonalDiscount: 0,
                                                ),
                                                count: 1,
                                                price: initState.detailsProduct?.price.price ?? 0,
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
                                  listBoutiques: listBoutiques,
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
                                Text(
                                  'Варианты',
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                                    // context.read<CatalogBloc>().add(
                                    //       CatalogEvent.getInfoProduct(
                                    //         code: product.id.toString(),
                                    //       ),
                                    //     );

                                    context.pushRoute(
                                      CatalogCardInfoRoute(
                                        isChildRoute: true,
                                        item: product,
                                        isLike: initState.favouritesProductsId.contains(product.id),
                                        addLike: () {
                                          context.read<CatalogBloc>().add(
                                                CatalogEvent.addFavouriteProduct(
                                                  product: product,
                                                  index: product.id,
                                                ),
                                              );
                                        },
                                        deleteLike: () {
                                          context.read<CatalogBloc>().add(
                                                CatalogEvent.deleteFavouriteProduct(
                                                  index: product.id,
                                                ),
                                              );
                                        },
                                        listItems: widget.listItems,
                                        favouritesProducts: widget.favouritesProducts,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 40,
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
                                                  listProducts: initState.listProdcutsStyle,
                                                  favouritesProducts: initState.favouritesProducts,
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
                                                  listProducts: initState.listProdcutsAlso,
                                                  favouritesProducts: initState.favouritesProducts,
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
                                                sections:
                                                    initState.detailsProduct?.sections.first.list ??
                                                        [],
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
                                                listProducts: initState.listProdcutsBrand,
                                                favouritesProducts: initState.favouritesProducts,
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
                orElse: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
