import 'dart:async';
import 'dart:developer';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_boutiques_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_category_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_description_product_info.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_images.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_products.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_variant_slider_images.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogCardInfoScreen extends StatefulWidget {
  const CatalogCardInfoScreen({
    super.key,
    this.item,
    this.code = '',
    required this.isLike,
    required this.listItems,
    required this.favouritesProducts,
    required this.isChildRoute,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final ProductDataModel? item;
  final List<ProductDataModel> listItems;
  final List<ProductDataModel> favouritesProducts;
  final bool isLike;
  final String? code;
  final String? messageId;
  final String? idNews;
  final bool isChildRoute;
  final String lastPath;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<CatalogCardInfoScreen> createState() => _CatalogCardInfoScreenState();
}

class _CatalogCardInfoScreenState extends State<CatalogCardInfoScreen> {
  final ScrollController _scrollController = ScrollController();
  BlindChickenMessage message = BlindChickenMessage();
  final BlindChickenShowDialogError _blindChickenCatalogCardInfoProductShowDialogError =
      BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogShoppingCartError = false;
  bool _isShowDialogCatalogCardInfoError = false;
  bool _isShoppingCartButton = true;
  bool _isChildRoute = false;
  bool _isSwipe = true;
  bool _isOpenSizeProduct = false;
  bool _isGoBack = true;
  late ProductDataModel item;

  @override
  void didChangeDependencies() {
    final sharedService = GetIt.I.get<SharedPreferencesService>();
    sharedService.setString(
      key: SharedPrefKeys.lastScreen,
      value: 'catalog_card_info',
    );

    _isChildRoute = widget.isChildRoute;
    final product = widget.item;
    if (product != null) {
      item = product;
    }
    if (widget.code?.isNotEmpty ?? false) {
      Timer(const Duration(milliseconds: 150), () {
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProduct(
                code: widget.code ?? '',
                messageId: widget.messageId,
                titleScreen: 'Описание товара из push-уведомления',
                typeAddProductToShoppingCart: 'Уведомление',
                identifierAddProductToShoppingCart: '2',
              ),
            );
      });
    }
    _scrollController.addListener(_loadMoreData);

    super.didChangeDependencies();
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
  void didUpdateWidget(covariant CatalogCardInfoScreen oldWidget) {
    final product = widget.item;
    if (product != null) {
      item = product;
    }

    if (product != null && _isOpenSizeProduct) {
      context
          .read<CatalogBloc>()
          .add(const CatalogEvent.checkOpenGetInfoProductSize(isOpenGetSizeProduct: false));
      context.read<CatalogBloc>().add(
            CatalogEvent.getInfoProductSize(
              code: product.id.toString(),
              isShop: product.isShop,
              titleScreen: 'Описание товара в каталоге',
            ),
          );
    }

    if (widget.code?.isNotEmpty ?? false) {
      Timer(const Duration(milliseconds: 150), () {
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProduct(
                code: widget.code ?? '',
                titleScreen: 'Описание товара в каталоге',
                typeAddProductToShoppingCart: 'Кнопка',
                identifierAddProductToShoppingCart: '4',
              ),
            );
      });
    }

    super.didUpdateWidget(oldWidget);
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
          preloadDataCompleted: (value) {
            final typeError = value.typeError ?? '';
            if (value.isError ?? false) {
              if (!_isShowDialogShoppingCartError &&
                  !_isShowDialogCatalogCardInfoError &&
                  typeError == 'информация о товаре') {
                _isShowDialogCatalogCardInfoError = true;
                _blindChickenCatalogCardInfoProductShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: value.errorMessage ?? '',
                  widget: BlocBuilder<CatalogBloc, CatalogState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        preloadDataCompleted: (value) {
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
                      case 'информация о товаре':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProduct(
                                code: value.codeProduct ?? '',
                                titleScreen: 'Карточка тоавара в каталоге',
                                typeAddProductToShoppingCart: 'Карточка товара',
                                identifierAddProductToShoppingCart: '1',
                              ),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogCatalogCardInfoError && !(value.isError ?? false)) {
                _isShowDialogCatalogCardInfoError = false;
                _blindChickenCatalogCardInfoProductShowDialogError.closeShowDialog();
              }
              if (value.isOpenGetSizeProduct) {
                _isOpenSizeProduct = true;
              } else {
                _isOpenSizeProduct = false;
              }
              if (value.listProductsCode.isEmpty) {
                if (widget.lastPath.isNotEmpty) {
                  if (widget.lastPath == 'news') {
                    context.navigateTo(
                      NewsRoute(children: [
                        NewsInfoRoute(
                          indexPage: 0,
                        ),
                      ]),
                    );
                    AppMetrica.reportEvent('Список новостей');
                  } else if (widget.lastPath == 'news_info_description') {
                    final newsInfo = widget.newsInfo;
                    if (newsInfo != null) {
                      context.navigateTo(
                        NewsInfoDescriptionRoute(
                          info: newsInfo,
                        ),
                      );
                      AppMetrica.reportEvent('Страница новостей');
                    }
                  } else if (widget.lastPath == 'media_info_description') {
                    final newsMediaInfo = widget.newsMediaInfo;
                    if (newsMediaInfo != null) {
                      context.navigateTo(
                        MediaInfoDescriptionRoute(
                          info: newsMediaInfo,
                        ),
                      );
                    }
                  } else if (widget.lastPath == 'notfication_info_description') {
                    final newsNotificationInfo = widget.newsNotificationInfo;
                    if (newsNotificationInfo != null) {
                      context.navigateTo(
                        NotificationInfoDescriptionRoute(
                          info: newsNotificationInfo,
                        ),
                      );
                    }
                  } else if (widget.lastPath == 'media_notiifcation_description') {
                    context.navigateTo(
                      MediaNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  } else if (widget.lastPath == 'news_notification_description') {
                    context.navigateTo(
                      NewsNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  } else if (widget.lastPath == 'notfication_info_notfication_description') {
                    context.navigateTo(
                      NotificationInfoNotificationDescriptionRoute(
                        idNews: widget.idNews ?? '',
                        isNotification: true,
                        messageId: widget.messageId,
                      ),
                    );
                  }
                } else {
                  final sharedService = GetIt.I.get<SharedPreferencesService>();
                  if (sharedService.getString(key: SharedPrefKeys.lastScreen) ==
                          'catalog_card_info' &&
                      _isGoBack) {
                    context.back();
                    _isGoBack = false;
                  }
                }
              }
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: BlocListener<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          state.maybeMap(
            error: (value) {
              if (!_isShowDialogShoppingCartError &&
                  !_isShowDialogCatalogCardInfoError &&
                  value.titleScreen == 'Карточка товара в каталоге') {
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
                              typeAddProductToShoppingCart: 'Выпадающий список',
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
        child: SwipeDetector(
          onSwipeRight: (offset) {
            context.read<CatalogBloc>().add(
                  const CatalogEvent.goBackProductInfo(),
                );
            setState(() {
              _isSwipe = false;
            });
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
                        AppBarBlindChicken(
                          onBack: () {
                            context.pushRoute(
                              const MainRoute(),
                            );
                          },
                        ),
                        BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                          return state.maybeMap(
                            preloadDataCompleted: (initState) {
                              final sky = initState.detailsProduct?.sku ?? [];
                              final price = int.parse(initState.detailsProduct?.price.pc ?? '0');
                              return PopScope(
                                canPop: false,
                                onPopInvoked: (value) {
                                  if (_isSwipe) {
                                    if (initState.listCatalogPath.isNotEmpty) {
                                      if (_isGoBack) {
                                        context
                                            .read<CatalogBloc>()
                                            .add(const CatalogEvent.goBackProductInfo());
                                      }
                                    } else {
                                      if (widget.lastPath.isNotEmpty) {
                                        if (widget.lastPath == 'news') {
                                          context.navigateTo(
                                            NewsRoute(children: [
                                              NewsInfoRoute(
                                                indexPage: 0,
                                              ),
                                            ]),
                                          );
                                          AppMetrica.reportEvent('Список новостей');
                                        } else if (widget.lastPath == 'news_info_description') {
                                          final newsInfo = widget.newsInfo;
                                          if (newsInfo != null) {
                                            context.navigateTo(
                                              NewsInfoDescriptionRoute(
                                                info: newsInfo,
                                              ),
                                            );
                                            AppMetrica.reportEvent('Страница новостей');
                                          }
                                        } else if (widget.lastPath == 'media_info_description') {
                                          final newsMediaInfo = widget.newsMediaInfo;
                                          if (newsMediaInfo != null) {
                                            context.navigateTo(
                                              MediaInfoDescriptionRoute(
                                                info: newsMediaInfo,
                                              ),
                                            );
                                          }
                                        } else if (widget.lastPath ==
                                            'notfication_info_description') {
                                          final newsNotificationInfo = widget.newsNotificationInfo;
                                          if (newsNotificationInfo != null) {
                                            context.navigateTo(
                                              NotificationInfoDescriptionRoute(
                                                info: newsNotificationInfo,
                                              ),
                                            );
                                          }
                                        } else if (widget.lastPath ==
                                            'media_notiifcation_description') {
                                          context.navigateTo(
                                            MediaNotificationDescriptionRoute(
                                              idNews: widget.idNews ?? '',
                                              isNotification: true,
                                              messageId: widget.messageId,
                                            ),
                                          );
                                        } else if (widget.lastPath ==
                                            'news_notification_description') {
                                          context.navigateTo(
                                            NewsNotificationDescriptionRoute(
                                              idNews: widget.idNews ?? '',
                                              isNotification: true,
                                              messageId: widget.messageId,
                                            ),
                                          );
                                        } else if (widget.lastPath ==
                                            'notfication_info_notfication_description') {
                                          context.navigateTo(
                                            NotificationInfoNotificationDescriptionRoute(
                                              idNews: widget.idNews ?? '',
                                              isNotification: true,
                                              messageId: widget.messageId,
                                            ),
                                          );
                                        }
                                      } else {
                                        WidgetsBinding.instance.addPostFrameCallback((_) {
                                          context.back();
                                        });
                                      }
                                    }
                                  }
                                },
                                child: Stack(
                                  children: [
                                    Column(
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
                                          onTap: (index) {
                                            log(index.toString());
                                            context.navigateTo(
                                              CatalogPreviewImagesRoute(
                                                selectIndex: index,
                                                listImages:
                                                    initState.detailsProduct?.photo.full ?? [],
                                                goBotton: () {},
                                                goBottonInfoProduct: () {
                                                  context.back();
                                                  if (_isChildRoute) {
                                                    context.navigateTo(
                                                      CatalogCardInfoRoute(
                                                        isChildRoute: true,
                                                        item: item,
                                                        isLike: widget.isLike,
                                                        listItems: widget.listItems,
                                                        favouritesProducts:
                                                            widget.favouritesProducts,
                                                      ),
                                                    );
                                                  }
                                                },
                                                video: initState.detailsProduct?.video ??
                                                    DetailProductVideoDataModel(
                                                      i: '',
                                                      v: '',
                                                    ),
                                              ),
                                            );
                                          },
                                          goSwipeBack: () {
                                            context
                                                .read<CatalogBloc>()
                                                .add(const CatalogEvent.goBackProductInfo());
                                          },
                                          video: initState.detailsProduct?.video ??
                                              DetailProductVideoDataModel(
                                                i: '',
                                                v: '',
                                              ),
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
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium,
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
                                                  if (!(initState.detailsProduct?.product
                                                              .isYourPriceDisplayed ??
                                                          false) ||
                                                      (initState.detailsProduct?.product
                                                                  .promoValue ??
                                                              0) >
                                                          0)
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
                                                        if ((initState.detailsProduct?.product
                                                                    .promoValue ??
                                                                0) >
                                                            0)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.only(right: 7),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                text: (initState.detailsProduct
                                                                            ?.price.yourPrice ??
                                                                        0)
                                                                    .toString()
                                                                    .spaceSeparateNumbers(),
                                                                style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayMedium
                                                                    ?.copyWith(
                                                                      fontWeight: FontWeight.w700,
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
                                                            fontWeight: initState
                                                                        .detailsProduct
                                                                        ?.product
                                                                        .isYourPriceDisplayed ??
                                                                    false
                                                                ? FontWeight.w400
                                                                : FontWeight.w700,
                                                            decoration: (initState.detailsProduct
                                                                            ?.product.promoValue ??
                                                                        0) >
                                                                    0
                                                                ? TextDecoration.lineThrough
                                                                : TextDecoration.none,
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
                                                          initState.detailsProduct?.price.pb ??
                                                              '0') >
                                                      int.parse(
                                                          initState.detailsProduct?.price.p ?? '0'))
                                                    Row(
                                                      children: [
                                                        const SizedBox(
                                                          width: 7,
                                                        ),
                                                        Text(
                                                          (initState.detailsProduct?.price.pb ??
                                                                  '0')
                                                              .spaceSeparateNumbers(),
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineLarge
                                                              ?.copyWith(
                                                                decoration:
                                                                    TextDecoration.lineThrough,
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
                                                  if ((initState.detailsProduct?.product
                                                              .isYourPriceDisplayed ??
                                                          false) &&
                                                      initState
                                                              .detailsProduct?.product.promoValue ==
                                                          0)
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
                                                                text: (initState.detailsProduct
                                                                            ?.price.yourPrice ??
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
                                              if ((initState.detailsProduct?.product.promoValue ??
                                                      0) >
                                                  0)
                                                Tooltip(
                                                  decoration: BoxDecoration(
                                                    color: BlindChickenColors.activeBorderTextField
                                                        .withOpacity(0.8),
                                                    borderRadius: const BorderRadius.all(
                                                      Radius.circular(4),
                                                    ),
                                                  ),
                                                  margin:
                                                      const EdgeInsets.only(left: 10, right: 10),
                                                  richMessage: WidgetSpan(
                                                    alignment: PlaceholderAlignment.baseline,
                                                    baseline: TextBaseline.alphabetic,
                                                    child: Text(
                                                      initState.detailsProduct?.product.promo ?? '',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium
                                                          ?.copyWith(
                                                            color:
                                                                BlindChickenColors.backgroundColor,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    padding: const EdgeInsets.only(
                                                      top: 1,
                                                      left: 4,
                                                      right: 4,
                                                      bottom: 1,
                                                    ),
                                                    margin:
                                                        const EdgeInsets.only(top: 7, bottom: 7),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(4),
                                                      color:
                                                          BlindChickenColors.activeBorderTextField,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          '-${initState.detailsProduct?.product.promoValue ?? 0}% по акции',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayMedium
                                                              ?.copyWith(
                                                                color: BlindChickenColors
                                                                    .backgroundColor,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        SvgPicture.asset(
                                                          'assets/icons/info.svg',
                                                          color: BlindChickenColors.backgroundColor,
                                                          height: 16,
                                                          width: 16,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              if (price >= 1000 && price <= 150000)
                                                GestureDetector(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return BlindChickenPayInstallmentsSberbank(
                                                          onBack: () {
                                                            context.maybePop();
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 26,
                                                    margin: EdgeInsets.only(
                                                      top: 7,
                                                      bottom: 7,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(4),
                                                      color: BlindChickenColors
                                                          .backgroundColorItemFilter,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                          width: 7,
                                                        ),
                                                        SvgPicture.asset(
                                                          'assets/icons/pchsbch.svg',
                                                          height: 14,
                                                          width: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 7,
                                                        ),
                                                        Text(
                                                          'Доступна оплата частями',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyMedium,
                                                        ),
                                                        SizedBox(
                                                          width: 7,
                                                        ),
                                                        SvgPicture.asset(
                                                          'assets/icons/info.svg',
                                                          height: 14,
                                                          width: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 7,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              CatalogCashbackInfo(
                                                userBuyForNextDiscount: initState
                                                        .detailsProduct?.userBuyForNextDiscount ??
                                                    0,
                                                userNextDiscount:
                                                    initState.detailsProduct?.userNextDiscount ?? 0,
                                                cashback:
                                                    initState.detailsProduct?.price.cashback ?? 0,
                                                bonusYear:
                                                    initState.detailsProduct?.price.bonusYear ?? 0,
                                                discountVal:
                                                    initState.detailsProduct?.price.discountVal ??
                                                        0,
                                                bonusLoyal:
                                                    initState.detailsProduct?.price.bonusLoyal ?? 0,
                                                bonusGift:
                                                    initState.detailsProduct?.price.bonusGift ?? 0,
                                                userDiscount:
                                                    initState.detailsProduct?.userDiscount ?? 0,
                                                p: int.parse(
                                                    initState.detailsProduct?.price.p ?? '0'),
                                                pc: int.parse(
                                                    initState.detailsProduct?.price.pc ?? '0'),
                                                isAuth: initState.isAuth,
                                                userBuyForNextDiscountVal: initState.detailsProduct
                                                        ?.userBuyForNextDiscountVal ??
                                                    0,
                                                pb: int.parse(
                                                    initState.detailsProduct?.price.pb ?? '0'),
                                                successfullyLogin: () {
                                                  Navigator.of(context, rootNavigator: true).pop();
                                                  context.read<CatalogBloc>().add(
                                                        CatalogEvent.getInfoProduct(
                                                          code:
                                                              (initState.detailsProduct?.code ?? 0)
                                                                  .toString(),
                                                          isUpdate: true,
                                                          titleScreen: 'Описание товара в каталоге',
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
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent
                                                                          .changeSizeProduct(
                                                                        selectSizeProduct: value,
                                                                      ),
                                                                    );
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent
                                                                          .checkProductToSoppingCart(
                                                                              size: value),
                                                                    );
                                                                context.back();
                                                              } else {
                                                                context.back();
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent.getInfoProduct(
                                                                        code: value.id.toString(),
                                                                        size: value,
                                                                        titleScreen:
                                                                            'Описание товара в каталоге',
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
                                                                initState.selectSizeProduct ??
                                                                    sky.first,
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        height: 37,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                              color: BlindChickenColors
                                                                  .borderTextField,
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
                                                                initState
                                                                        .selectSizeProduct?.value ??
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
                                              BlindChickenButtonShoppingCartProduct(
                                                title: (initState.isShoppingCart ?? false)
                                                    ? 'Перейти в корзину'
                                                    : 'Добавить в корзину',
                                                onChenge: () {
                                                  if (initState.isShoppingCart ?? false) {
                                                    Timer(const Duration(milliseconds: 150), () {
                                                      context.read<ShoppingCartBloc>().add(
                                                          const ShoppingCartEvent.preloadData());
                                                    });
                                                    context.navigateTo(
                                                      const ShoppingCartAutoRouterRoute(
                                                        children: [
                                                          ShoppingCartRoute(),
                                                        ],
                                                      ),
                                                    );
                                                  } else {
                                                    context.read<CatalogBloc>().add(
                                                          CatalogEvent.addProductToSoppingCart(
                                                            code:
                                                                initState.detailsProduct?.code ?? 0,
                                                            size: initState.selectSizeProduct ??
                                                                (sky.isNotEmpty ? sky.first : null),
                                                            titleScreen:
                                                                'Карточка товара в каталоге',
                                                            typeAddProductToShoppingCart: 'Кнопка',
                                                            identifierAddProductToShoppingCart: '1',
                                                          ),
                                                        );

                                                    context.read<ShoppingCartBloc>().add(
                                                          ShoppingCartEvent
                                                              .addOtherProductToSoppingCart(
                                                            item: BasketInfoItemDataModel(
                                                              titleScreen:
                                                                  'Карточка товара в каталоге',
                                                              typeAddProductToShoppingCart:
                                                                  'Кнопка',
                                                              searchQuery: '',
                                                              identifierAddProductToShoppingCart:
                                                                  '1',
                                                              code:
                                                                  (initState.detailsProduct?.code ??
                                                                          0)
                                                                      .toString(),
                                                              sku: (initState.selectSizeProduct?.id
                                                                          .isNotEmpty ??
                                                                      false)
                                                                  ? (initState
                                                                          .selectSizeProduct?.id ??
                                                                      '')
                                                                  : sky.isNotEmpty
                                                                      ? sky.first.id
                                                                      : '',
                                                              count: 1,
                                                              sectionCategoriesPath: [
                                                                initState.catalogInfo?.h1 ?? ''
                                                              ],
                                                              productCategoriesPath:
                                                                  initState.catalogInfo?.breadcrumbs
                                                                          .map(
                                                                            (item) => item.name,
                                                                          )
                                                                          .toList() ??
                                                                      [],
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
                                              CatalogBoutiquesInfo(
                                                listBoutiques:
                                                    initState.detailsProduct?.stock ?? [],
                                              ),
                                              const SizedBox(
                                                height: 3.5,
                                              ),
                                              Text(
                                                'Бесплатная доставка по России от 20 000 ₽',
                                                style: Theme.of(context).textTheme.displayMedium,
                                              ),
                                              const SizedBox(
                                                height: 28,
                                              ),
                                              if (initState.detailsProduct?.option.isNotEmpty ??
                                                  false)
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
                                                                titleScreen:
                                                                    'Описание товара в каталоге (Варианты)',
                                                                typeAddProductToShoppingCart:
                                                                    'Кнопка',
                                                                identifierAddProductToShoppingCart:
                                                                    '4',
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
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                              ),
                                              if (initState.detailsProduct?.text.isNotEmpty ??
                                                  false)
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
                                                char: initState.detailsProduct?.char ?? [],
                                              ),
                                              BlocBuilder<CatalogBloc, CatalogState>(
                                                builder: (context, state) {
                                                  return state.maybeMap(
                                                      preloadDataCompleted: (initState) {
                                                        if (initState
                                                            .listProdcutsComplect.isNotEmpty) {
                                                          return Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                              const SizedBox(
                                                                height: 35,
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
                                                                  context.read<CatalogBloc>().add(
                                                                        CatalogEvent.getInfoProduct(
                                                                          code: value.id.toString(),
                                                                          titleScreen:
                                                                              'Описание товара в каталоге (Носят вместе)',
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
                                                                  context.read<CatalogBloc>().add(
                                                                        CatalogEvent
                                                                            .addFavouriteProduct(
                                                                          product: initState
                                                                                  .listProdcutsComplect[
                                                                              index],
                                                                          index: initState
                                                                              .listProdcutsComplect[
                                                                                  index]
                                                                              .id,
                                                                        ),
                                                                      );
                                                                },
                                                                deleteLike: (index) {
                                                                  context.read<CatalogBloc>().add(
                                                                        CatalogEvent
                                                                            .deleteFavouriteProduct(
                                                                          index: initState
                                                                              .listProdcutsComplect[
                                                                                  index]
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
                                              BlocBuilder<CatalogBloc, CatalogState>(
                                                builder: (context, state) {
                                                  return state.maybeMap(
                                                      preloadDataCompleted: (initState) {
                                                        if (initState
                                                            .listProdcutsStyle.isNotEmpty) {
                                                          return Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                              const SizedBox(
                                                                height: 35,
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
                                                                          titleScreen:
                                                                              'Описание товара в каталоге (Рекомендации стилистов)',
                                                                          typeAddProductToShoppingCart:
                                                                              'Карточка товара',
                                                                          identifierAddProductToShoppingCart:
                                                                              '1',
                                                                        ),
                                                                      );
                                                                },
                                                                listProducts:
                                                                    initState.listProdcutsStyle,
                                                                favouritesProductsId:
                                                                    initState.favouritesProductsId,
                                                                addLike: (index) {
                                                                  context.read<CatalogBloc>().add(
                                                                        CatalogEvent
                                                                            .addFavouriteProduct(
                                                                          product: initState
                                                                                  .listProdcutsStyle[
                                                                              index],
                                                                          index: initState
                                                                              .listProdcutsStyle[
                                                                                  index]
                                                                              .id,
                                                                        ),
                                                                      );
                                                                },
                                                                deleteLike: (index) {
                                                                  context.read<CatalogBloc>().add(
                                                                        CatalogEvent
                                                                            .deleteFavouriteProduct(
                                                                          index: initState
                                                                              .listProdcutsStyle[
                                                                                  index]
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
                                              BlocBuilder<CatalogBloc, CatalogState>(
                                                builder: (context, state) {
                                                  return state.maybeMap(
                                                      preloadDataCompleted: (initState) {
                                                        if (initState.listProdcutsAlso.isNotEmpty) {
                                                          return Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.start,
                                                            children: [
                                                              const SizedBox(
                                                                height: 35,
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
                                                              LayoutBuilder(
                                                                builder: (context, constraints) {
                                                                  log(constraints.toString());
                                                                  return CatalogSliderProducts(
                                                                    onSelectProduct: (value) {
                                                                      context
                                                                          .read<CatalogBloc>()
                                                                          .add(
                                                                            CatalogEvent
                                                                                .getInfoProduct(
                                                                              code: value.id
                                                                                  .toString(),
                                                                              titleScreen:
                                                                                  'Описание товара в каталоге (Смотрите также)',
                                                                              typeAddProductToShoppingCart:
                                                                                  'Карточка товара',
                                                                              identifierAddProductToShoppingCart:
                                                                                  '1',
                                                                            ),
                                                                          );
                                                                    },
                                                                    listProducts:
                                                                        initState.listProdcutsAlso,
                                                                    favouritesProductsId: initState
                                                                        .favouritesProductsId,
                                                                    addLike: (index) {
                                                                      context
                                                                          .read<CatalogBloc>()
                                                                          .add(
                                                                            CatalogEvent
                                                                                .addFavouriteProduct(
                                                                              product: initState
                                                                                      .listProdcutsAlso[
                                                                                  index],
                                                                              index: initState
                                                                                  .listProdcutsAlso[
                                                                                      index]
                                                                                  .id,
                                                                            ),
                                                                          );
                                                                    },
                                                                    deleteLike: (index) {
                                                                      context
                                                                          .read<CatalogBloc>()
                                                                          .add(
                                                                            CatalogEvent
                                                                                .deleteFavouriteProduct(
                                                                              index: initState
                                                                                  .listProdcutsAlso[
                                                                                      index]
                                                                                  .id,
                                                                            ),
                                                                          );
                                                                    },
                                                                    isAuth: initState.isAuth,
                                                                  );
                                                                },
                                                              ),
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
                                                      if (initState.detailsProduct?.sections
                                                              .isNotEmpty ??
                                                          false) {
                                                        return Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
                                                            const SizedBox(
                                                              height: 35,
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
                                                              sections: initState.detailsProduct
                                                                      ?.sections.first.list ??
                                                                  [],
                                                              onTap: (path) {
                                                                Timer(
                                                                    const Duration(
                                                                        milliseconds: 10), () {
                                                                  context.pushRoute(
                                                                    CatalogRoute(
                                                                      title: '',
                                                                      url: path,
                                                                    ),
                                                                  );
                                                                });
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent.getInfoProducts(
                                                                        path: path,
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
                                              BlocBuilder<CatalogBloc, CatalogState>(
                                                builder: (context, state) {
                                                  return state.maybeMap(
                                                    preloadDataCompleted: (initState) {
                                                      if (initState.listProdcutsBrand.isNotEmpty) {
                                                        return Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
                                                            const SizedBox(
                                                              height: 35,
                                                            ),
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
                                                                        titleScreen:
                                                                            'Описание товара в каталоге (Товары бренда)',
                                                                        typeAddProductToShoppingCart:
                                                                            'Карточка товара',
                                                                        identifierAddProductToShoppingCart:
                                                                            '1',
                                                                      ),
                                                                    );
                                                              },
                                                              listProducts:
                                                                  initState.listProdcutsBrand,
                                                              favouritesProductsId:
                                                                  initState.favouritesProductsId,
                                                              addLike: (index) {
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent
                                                                          .addFavouriteProduct(
                                                                        product: initState
                                                                                .listProdcutsBrand[
                                                                            index],
                                                                        index: initState
                                                                            .listProdcutsBrand[
                                                                                index]
                                                                            .id,
                                                                      ),
                                                                    );
                                                              },
                                                              deleteLike: (index) {
                                                                context.read<CatalogBloc>().add(
                                                                      CatalogEvent
                                                                          .deleteFavouriteProduct(
                                                                        index: initState
                                                                            .listProdcutsBrand[
                                                                                index]
                                                                            .id,
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
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // GestureDetector(
                                    //   onVerticalDragUpdate: (details) {},
                                    //   onHorizontalDragEnd: (DragEndDetails details) {
                                    //     if (details.velocity.pixelsPerSecond.dx > 0) {
                                    //       context.read<CatalogBloc>().add(
                                    //             const CatalogEvent.goBackProductInfo(),
                                    //           );
                                    //       setState(() {
                                    //         _isSwipe = false;
                                    //       });
                                    //       log((details.velocity.pixelsPerSecond.dx).toString());
                                    //     }
                                    //   },
                                    //   child: Container(
                                    //     height: MediaQuery.of(context).size.height,
                                    //     width: 50,
                                    //     margin: EdgeInsets.only(top: 50),
                                    //     color: Colors.transparent,
                                    //   ),
                                    // )
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
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
              BlocBuilder<CatalogBloc, CatalogState>(
                builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      if (_isShoppingCartButton) {
                        return BlindChickenTitleButton(
                          title: (initState.isShoppingCartDetailsProduct ?? false)
                              ? 'Перейти в корзину'
                              : 'Добавить в корзину',
                          onChange: () {
                            if (!initState.isLoadGetSizeProduct) {
                              context.read<CatalogBloc>().add(
                                    CatalogEvent.getInfoProductSize(
                                      code: (initState.detailsProduct?.code ?? 0).toString(),
                                      isShop: initState.isShoppingCart ?? false,
                                      titleScreen: 'Карточка товара в каталоге',
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
      ),
    );
  }
}
