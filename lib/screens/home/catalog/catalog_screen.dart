import 'dart:async';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_card_proverka_zreniya.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_information_panel.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_size_product_info.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
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
    this.filterNotifcation,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
    this.idNews,
  });

  final bool isBack;
  final bool isNotification;
  final VoidCallback? onBack;
  final String? idNews;
  final String? messageId;
  final String title;
  final FilterNotifcationDataModel? filterNotifcation;
  final String url;
  final String sort;
  final String lastPath;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final constants = ConstatntsInfo();
  BlindChickenMessage message = BlindChickenMessage();
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenCatalogProductShowDialogError = BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError = BlindChickenShowDialogError();
  bool _isShowDialogCatalogError = false;
  bool _isShowDialogShoppingCartError = false;
  double _paginationPosition = 0.0;
  int _currentPage = 1;
  double _boundaryOffset = 0.5;
  bool _isSwipe = true;
  bool _isScroll = true;
  bool _isZoom = false;
  double _historyPosition = 0.0;
  int _touchCount = 0;

  @override
  void didChangeDependencies() {
    if (widget.isNotification) {
      Timer(const Duration(milliseconds: 150), () {
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProductsPushNotification(
                path: widget.filterNotifcation?.url ?? '',
                sort: widget.sort,
                filterNotifcation: widget.filterNotifcation ??
                    FilterNotifcationDataModel(
                      filter: [],
                      fullFilter: [],
                      url: '',
                    ),
                messageId: widget.messageId,
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

    if (updateData.lastScreen == 'shopping_cart' && !updateData.isOpenShowModalBottomSheetCatalogScreen) {
      context.read<CatalogBloc>().add(
            const CatalogEvent.updateInfoProducts(
              titleScreen: 'Каталог',
            ),
          );
    }

    super.didUpdateWidget(oldWidget);
  }

  void _loadMoreData() {
    context.read<CatalogBloc>().add(
          CatalogEvent.checkButtonTop(
            isButtonTop: _historyPosition > _scrollController.position.pixels && _scrollController.position.pixels > 0,
          ),
        );

    bool isActive = (_scrollController.position.maxScrollExtent - 2500).toInt() > _paginationPosition.toInt() &&
        (_scrollController.position.maxScrollExtent - 2500).toInt() != _paginationPosition.toInt();
    //load more data
    if ((_scrollController.offset > _scrollController.position.maxScrollExtent * _boundaryOffset) && isActive) {
      _paginationPosition = _scrollController.position.maxScrollExtent - 2500;
      _currentPage++;
      _boundaryOffset = 1 - 1 / (_currentPage * 2);

      logging(_currentPage.toString(), stackTrace: StackTrace.current);

      context.read<CatalogBloc>().add(
            const CatalogEvent.paginationProduct(),
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
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogCatalogError &&
                  typeError != 'выбрать фильтр' &&
                  typeError != 'удалить фильтр' &&
                  typeError != 'удалить фильтры из категории' &&
                  typeError != 'информация о товаре') {
                _isShowDialogCatalogError = true;
                _blindChickenCatalogProductShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
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
                      case 'каталог из уведомления':
                        Timer(const Duration(milliseconds: 150), () {
                          context.read<CatalogBloc>().add(
                                CatalogEvent.getInfoProductsPushNotification(
                                  path: widget.filterNotifcation?.url ?? '',
                                  sort: widget.sort,
                                  filterNotifcation: widget.filterNotifcation ??
                                      FilterNotifcationDataModel(
                                        filter: [],
                                        fullFilter: [],
                                        url: '',
                                      ),
                                  messageId: widget.messageId,
                                  isError: true,
                                ),
                              );
                        });
                        break;
                      case 'каталог':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProducts(
                                path: initState.listCatalogPath.last,
                              ),
                            );
                        break;
                      case 'выбор размера каталог':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: 'Каталог',
                              ),
                            );
                        break;
                      case 'выбор размера карточка товара в каталоге':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProductSize(
                                code: initState.codeProduct ?? '',
                                isShop: initState.isShopGetSizeProduct ?? false,
                                titleScreen: 'Карточка товара в каталоге',
                              ),
                            );
                        break;
                      case 'сортировка':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.sortProducts(value: initState.sortInfo ?? ''),
                            );
                        break;
                      case 'удалить фильтр из каталога':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.deleteCatalogFilter(
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
                      case 'добавить товар в избранное':
                        final product = initState.favouriteProduct;
                        if (product != null) {
                          context.read<CatalogBloc>().add(
                                CatalogEvent.addFavouriteProduct(
                                  index: initState.indexProduct ?? 0,
                                  product: product,
                                ),
                              );
                        }
                        break;
                      case 'удалить товар из избранного':
                        context.read<CatalogBloc>().add(
                              CatalogEvent.deleteFavouriteProduct(
                                index: initState.indexProduct ?? 0,
                              ),
                            );
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogCatalogError && !(initState.isError ?? false)) {
                _isShowDialogCatalogError = false;
                _blindChickenCatalogProductShowDialogError.closeShowDialog();
              }
              if (initState.isUpdateVersionApp && initState.isNotification) {
                final updateData = GetIt.I.get<UpdateDataService>();
                if (updateData.isOpenUpdateModalWindow) {
                  Navigator.of(context, rootNavigator: true).pop();
                }
                BlindChickenMessage().showOverlay(context, 'Доступно обновление приложения', () {
                  if (Platform.isAndroid || Platform.isIOS) {
                    final appId = Platform.isAndroid ? 'YOUR_ANDROID_PACKAGE_ID' : 'com.slepayakurica.app';
                    final url = Uri.parse(
                      Platform.isAndroid ? "market://details?id=$appId" : "https://apps.apple.com/ru/app/id6471508431",
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
              final sharedPreferences = GetIt.I.get<SharedPreferencesService>();
              bool? isPromotionsForPurchases = sharedPreferences.getBool(
                key: SharedPrefKeys.isPromotionsForPurchases,
              );

              if (initState.isPromotionsForPurchases &&
                  (isPromotionsForPurchases == null || isPromotionsForPurchases)) {
                final sharedPreferences = GetIt.I.get<SharedPreferencesService>();
                sharedPreferences.setBool(
                  key: SharedPrefKeys.isPromotionsForPurchases,
                  value: false,
                );
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlindChickenPromotionsForPurchases(
                        onBack: () {
                          context.maybePop();
                        },
                      );
                    });
              }
            }
          },
          getSizeProduct: (initState) {
            if (!_isShowDialogCatalogError) {
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
                      context
                          .read<CatalogBloc>()
                          .add(const CatalogEvent.checkOpenGetInfoProductSize(isOpenGetSizeProduct: true));
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
                            CatalogEvent.addProductToSoppingCart(
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
                                titleScreen: initState.titleScreen,
                                typeAddProductToShoppingCart: 'Выпадающий список',
                                searchQuery: '',
                                identifierAddProductToShoppingCart: '2',
                                sectionCategoriesPath: initState.sectionCategoriesPath,
                                productCategoriesPath: initState.productCategoriesPath,
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
                            context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
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
            }
          },
          addProductToSoppingCart: (initState) {
            context.read<CatalogBloc>().add(
                  CatalogEvent.addProductToSoppingCart(
                    code: int.parse(initState.code),
                    titleScreen: initState.titleScreen,
                    typeAddProductToShoppingCart: 'Кнопка',
                    identifierAddProductToShoppingCart: '1',
                  ),
                );

            context.read<ShoppingCartBloc>().add(
                  ShoppingCartEvent.addOtherProductToSoppingCart(
                    item: BasketInfoItemDataModel(
                      titleScreen: initState.titleScreen,
                      typeAddProductToShoppingCart: 'Кнопка',
                      searchQuery: '',
                      identifierAddProductToShoppingCart: '1',
                      sectionCategoriesPath: initState.sectionCategoriesPath,
                      productCategoriesPath: initState.productCategoriesPath,
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
      child: BlocListener<ShoppingCartBloc, ShoppingCartState>(
        listener: (context, state) {
          state.maybeMap(
            error: (value) {
              if (!_isShowDialogShoppingCartError && !_isShowDialogCatalogError && value.titleScreen == 'Каталог') {
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
                              typeAddProductToShoppingCart: value.item?.typeAddProductToShoppingCart ?? '',
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
        child: AbsorbPointer(
          absorbing: _isZoom,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Scaffold(
                        backgroundColor: BlindChickenColors.backgroundColor,
                        body: SafeArea(
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (scrollNotification) {
                              if (scrollNotification is ScrollStartNotification) {
                                logging('ScrollStartNotification', stackTrace: StackTrace.current);
                                _isSwipe = false;
                              } else if (scrollNotification is ScrollUpdateNotification) {
                                logging('ScrollUpdateNotification', stackTrace: StackTrace.current);
                                _isSwipe = false;
                              } else if (scrollNotification is ScrollEndNotification) {
                                logging('ScrollEndNotification', stackTrace: StackTrace.current);
                                _isSwipe = true;
                              }
                              return true;
                            },
                            child: ListView(
                              controller: _scrollController,
                              physics: _isScroll ? const BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
                              children: [
                                const AppBarBlindChicken(),
                                BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                                  return state.maybeMap(
                                    preloadDataCompleted: (initState) {
                                      if (initState.offset == 1) {
                                        _paginationPosition = 0;
                                      }
                                      return PopScope(
                                        canPop: false,
                                        onPopInvoked: (value) {
                                          final onBack = widget.onBack;
                                          if (onBack != null) {
                                            onBack();
                                          }
                                          if (_isSwipe && !value) {
                                            context.read<CatalogBloc>().add(const CatalogEvent.goBackCatalogInfo());
                                            if (initState.listCatalogPath.isEmpty ||
                                                initState.listCatalogPath.length == 1) {
                                              if (widget.lastPath.isNotEmpty) {
                                                if (widget.lastPath == 'news') {
                                                  context.navigateTo(
                                                    NewsRoute(children: [
                                                      NewsInfoRepairedRoute(
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
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CatalogInformationPanel(
                                              initState: initState,
                                              isBack: widget.isBack,
                                            ),
                                            Wrap(
                                              children: List.generate(
                                                initState.products.length,
                                                (index) {
                                                  final codeProduct = (initState.codeProduct?.isNotEmpty ?? false)
                                                      ? int.parse(initState.codeProduct ?? '0')
                                                      : '';
                                                  if (initState.products[index].title == 'proverka_zreniya') {
                                                    return const CatalogCardProverkaZreniya();
                                                  } else {
                                                    return Listener(
                                                      onPointerDown: (details) {
                                                        _touchCount++;
                                                        if (_touchCount > 1 || _isZoom) {
                                                          setState(() {
                                                            _isScroll = false;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            _isScroll = true;
                                                          });
                                                        }
                                                      },
                                                      onPointerUp: (details) {
                                                        _touchCount--;
                                                        if (_touchCount > 1 || _isZoom) {
                                                          setState(() {
                                                            _isScroll = false;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            _isScroll = true;
                                                          });
                                                        }
                                                      },
                                                      onPointerCancel: (details) {
                                                        _touchCount--;
                                                        if (_touchCount > 1 || _isZoom) {
                                                          setState(() {
                                                            _isScroll = false;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            _isScroll = true;
                                                          });
                                                        }
                                                      },
                                                      child: CatalogCardItem(
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
                                                          context.navigateTo(
                                                            CardInfoRoute(
                                                              product: initState.products[index],
                                                              isLike: initState.favouritesProductsId
                                                                  .contains(initState.products[index].id),
                                                              listItems: initState.products,
                                                              favouritesProducts: initState.favouritesProducts,
                                                              isChildRoute: false,
                                                              codeProduct: initState.products[index].id
                                                                  .toString(),
                                                              titleScreen:
                                                              'Карточка тоавара в каталоге',
                                                            ),
                                                          );
                                                        },
                                                        yourPrice: initState.products[index].yourPrice.toString(),
                                                        imageUrl: initState.products[index].images[0],
                                                        brend: initState.products[index].brend,
                                                        category: initState.products[index].category,
                                                        price: initState.products[index].price.toString(),
                                                        isYourPriceDisplayed:
                                                            initState.products[index].isYourPriceDisplayed,
                                                        maximumCashback: initState.products[index].maximumCashback,
                                                        discount: initState.products[index].discount,
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
                                                                  titleScreen: 'Каталог',
                                                                ),
                                                              );
                                                        },
                                                        listSize: initState.listSize,
                                                        isLoad: codeProduct == initState.products[index].id &&
                                                            initState.isLoadGetSizeProduct,
                                                        sizeProduct: initState.products[index].sz,
                                                        promo: initState.products[index].promo,
                                                        promoValue: initState.products[index].promoValue,
                                                        images: initState.products[index].images,
                                                        video: initState.products[index].video,
                                                        goSwipeBack: () {
                                                          if (index.isEven) {
                                                            context.read<CatalogBloc>().add(
                                                                  const CatalogEvent.goBackCatalogInfo(),
                                                                );
                                                            if (initState.listCatalogPath.isEmpty ||
                                                                initState.listCatalogPath.length == 1) {
                                                              if (widget.lastPath.isNotEmpty) {
                                                                if (widget.lastPath == 'news') {
                                                                  context.navigateTo(
                                                                    NewsRoute(children: [
                                                                      NewsInfoRepairedRoute(
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
                                                                } else if (widget.lastPath ==
                                                                    'media_info_description') {
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
                                                                  final newsNotificationInfo =
                                                                      widget.newsNotificationInfo;
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
                                                            setState(() {
                                                              _isSwipe = false;
                                                            });
                                                          }
                                                        },
                                                        onScaleStart: () {
                                                          setState(() {
                                                            _isZoom = true;
                                                            _isScroll = false;
                                                          });
                                                          context.read<BottomNavigationBloc>().add(
                                                                BottomNavigationEvent.switchBlocked(isBlocked: true),
                                                              );
                                                        },
                                                        onScaleStop: () {
                                                          setState(() {
                                                            _isZoom = false;
                                                            _isScroll = true;
                                                          });
                                                          context.read<BottomNavigationBloc>().add(
                                                                BottomNavigationEvent.switchBlocked(isBlocked: false),
                                                              );
                                                        },
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    orElse: () => const SizedBox(),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ),
                      BlocBuilder<CatalogBloc, CatalogState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            preloadDataCompleted: (initState) {
                              if (initState.isButtonTop) {
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
                                    style: Theme.of(context).textTheme.headlineLarge,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                      orElse: () => const SizedBox(),
                    );
                  }),
                ],
              ),
              BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return GestureDetector(
                      onHorizontalDragUpdate: (details) {},
                      onHorizontalDragEnd: (DragEndDetails details) {
                        if (details.velocity.pixelsPerSecond.dx > 1000 && _isSwipe) {
                          context.read<CatalogBloc>().add(
                                const CatalogEvent.goBackCatalogInfo(),
                              );
                          if (initState.listCatalogPath.isEmpty || initState.listCatalogPath.length == 1) {
                            if (widget.lastPath.isNotEmpty) {
                              if (widget.lastPath == 'news') {
                                context.navigateTo(
                                  NewsRoute(children: [
                                    NewsInfoRepairedRoute(
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
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                context.back();
                              });
                            }
                          }
                          setState(() {
                            _isSwipe = false;
                          });
                          logging((details.velocity.pixelsPerSecond.dx).toString(), stackTrace: StackTrace.current);
                        }
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height - (initState.isButtonTop ? 180 : 0),
                        width: 50,
                        color: Colors.transparent,
                      ),
                    );
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
