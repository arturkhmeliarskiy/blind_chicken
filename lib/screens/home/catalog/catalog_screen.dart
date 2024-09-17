import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_card_proverka_zreniya.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_information_panel.dart';
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
    this.filterNotifcation,
    this.lastPath = '',
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
    this.messageId,
  });

  final bool isBack;
  final bool isNotification;
  final VoidCallback? onBack;
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
  double _paginationPosition = 0.0;
  int _currentPage = 1;
  double _boundaryOffset = 0.5;
  bool isButtonTop = false;
  bool _isSwipe = true;
  double _historyPosition = 0.0;

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

    if (updateData.lastScreen == 'shopping_cart' &&
        !updateData.isOpenShowModalBottomSheetCatalogScreen) {
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
                        context.popRoute();
                      },
                    );
                  });
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
                    context.read<CatalogBloc>().add(
                        const CatalogEvent.checkOpenGetInfoProductSize(isOpenGetSizeProduct: true));
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
      child: Stack(
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
                        log('ScrollStartNotification');
                        _isSwipe = false;
                      } else if (scrollNotification is ScrollUpdateNotification) {
                        log('ScrollUpdateNotification');
                        _isSwipe = false;
                      } else if (scrollNotification is ScrollEndNotification) {
                        log('ScrollEndNotification');
                        _isSwipe = true;
                      }
                      return true;
                    },
                    child: ListView(
                      controller: _scrollController,
                      children: [
                        const AppBarBlindChicken(),
                        BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                          return state.maybeMap(
                            preloadDataCompleted: (initState) {
                              if (initState.offset == 1) {
                                _paginationPosition = 0;
                              }
                              return GestureDetector(
                                onHorizontalDragUpdate: (details) {},
                                onHorizontalDragEnd: (DragEndDetails details) {
                                  if (details.velocity.pixelsPerSecond.dx > 1000 && _isSwipe) {
                                    context.read<CatalogBloc>().add(
                                          const CatalogEvent.goBackCatalogInfo(),
                                        );
                                    if (initState.listCatalogPath.isEmpty ||
                                        initState.listCatalogPath.length == 1) {
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
                                    if (_isSwipe && !value) {
                                      context
                                          .read<CatalogBloc>()
                                          .add(const CatalogEvent.goBackCatalogInfo());
                                      if (initState.listCatalogPath.isEmpty ||
                                          initState.listCatalogPath.length == 1) {
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
                                            final newsNotificationInfo =
                                                widget.newsNotificationInfo;
                                            if (newsNotificationInfo != null) {
                                              context.navigateTo(
                                                NotificationInfoDescriptionRoute(
                                                  info: newsNotificationInfo,
                                                ),
                                              );
                                            }
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
                                            final codeProduct =
                                                (initState.codeProduct?.isNotEmpty ?? false)
                                                    ? int.parse(initState.codeProduct ?? '0')
                                                    : '';
                                            if (initState.products[index].title ==
                                                'proverka_zreniya') {
                                              return const CatalogCardProverkaZreniya();
                                            } else {
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
                                                          code: initState.products[index].id
                                                              .toString(),
                                                          titleScreen:
                                                              'Карточка тоавара в каталоге',
                                                          typeAddProductToShoppingCart:
                                                              'Карточка товара',
                                                          identifierAddProductToShoppingCart: '1',
                                                        ),
                                                      );
                                                  context.navigateTo(
                                                    CatalogCardInfoRoute(
                                                      item: initState.products[index],
                                                      isLike: initState.favouritesProductsId
                                                          .contains(initState.products[index].id),
                                                      listItems: initState.products,
                                                      favouritesProducts:
                                                          initState.favouritesProducts,
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
                                                maximumPersonalDiscount: initState
                                                    .products[index].maximumPersonalDiscount,
                                                isAuth: initState.isAuth,
                                                userDiscount: initState.userDiscount,
                                                pb: initState.products[index].pb,
                                                isShop: initState.products[index].isShop,
                                                onAddProductToSoppingCart: () {
                                                  context.read<CatalogBloc>().add(
                                                        CatalogEvent.getInfoProductSize(
                                                          code: initState.products[index].id
                                                              .toString(),
                                                          isShop: initState.products[index].isShop,
                                                          titleScreen: 'Каталог',
                                                        ),
                                                      );
                                                },
                                                listSize: initState.listSize,
                                                isLoad:
                                                    codeProduct == initState.products[index].id &&
                                                        initState.isLoadGetSizeProduct,
                                                sizeProduct: initState.products[index].sz,
                                                promo: initState.products[index].promo,
                                                promoValue: initState.products[index].promoValue,
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
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
