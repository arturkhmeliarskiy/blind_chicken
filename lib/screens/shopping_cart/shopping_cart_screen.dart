import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_check_create_order.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_delivery_user_info.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_pay_user_info.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_payment_promo_code.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_promotional_code.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenShoppingCartShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogShoppingCartError = false;
  bool _isButtonTop = false;
  bool _isSwipe = true;
  double _historyPosition = 0.0;

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
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
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          productsShoppingCart: (initState) {
            final typeError = initState.typeError ?? '';
            if (initState.isError ?? false) {
              if (!_isShowDialogShoppingCartError &&
                  typeError != 'проверка бонусов' &&
                  typeError != 'описание товара' &&
                  typeError != 'выбор размера описание товара' &&
                  typeError != 'добавить товар в корзину' &&
                  typeError != 'добавить товар в избранное' &&
                  typeError != 'удалить товар из избранного') {
                _isShowDialogShoppingCartError = true;
                _blindChickenShoppingCartShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        productsShoppingCart: (value) {
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
                      case 'изменить количство тоаров в корзине':
                        final itemInfo = initState.itemInfo;
                        if (itemInfo != null) {
                          context.read<ShoppingCartBloc>().add(
                                ShoppingCartEvent.updateProductToSoppingCart(
                                  index: initState.indexItem ?? 0,
                                  item: itemInfo,
                                ),
                              );
                        }
                        break;
                      case 'удалить товар из корзины':
                        final itemInfo = initState.itemInfo;
                        if (itemInfo != null) {
                          context.read<ShoppingCartBloc>().add(
                                ShoppingCartEvent.deleteProductToSoppingCart(
                                  index: initState.indexItem ?? 0,
                                  item: itemInfo,
                                ),
                              );
                        }
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogShoppingCartError) {
                _isShowDialogShoppingCartError = false;
                _blindChickenShoppingCartShowDialogError.closeShowDialog();
              }
            }
          },
          error: (value) {
            if (!_isShowDialogShoppingCartError) {
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
                  Timer(const Duration(milliseconds: 150), () {
                    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
                  });
                },
              );
            }
          },
          createOrderSuccessfully: (value) {
            Timer(const Duration(milliseconds: 150), () {
              context.read<AccountBloc>().add(
                    AccountEvent.getInfoPayOrder(
                      id: value.orderId.toString(),
                    ),
                  );
            });

            context.navigateTo(LoginRoute(
              children: [
                OrderUserInfoRoute(
                  isPay: true,
                  orderId: value.orderId.toString(),
                ),
              ],
            ));
          },
          orElse: () {},
        );
      },
      child: GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            final updateData = GetIt.I.get<UpdateDataService>();

            if (updateData.lastScreen == 'search_result') {
              context.read<SearchBloc>().add(
                    const SearchEvent.updateInfoProducts(
                      titleScreen: 'Результаты поиска',
                    ),
                  );
            }
            if (updateData.lastScreen == 'favourites_products') {
              context.read<FavouritesBloc>().add(
                    const FavouritesEvent.updateInfoProducts(
                      titleScreen: 'Избранное',
                    ),
                  );
            }
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
                          final updateData = GetIt.I.get<UpdateDataService>();

                          if (updateData.lastScreen == 'search_result') {
                            context.read<SearchBloc>().add(
                                  const SearchEvent.updateInfoProducts(
                                    titleScreen: 'Результаты поиска',
                                  ),
                                );
                          }
                          if (updateData.lastScreen == 'favourites_products') {
                            context.read<FavouritesBloc>().add(
                                  const FavouritesEvent.updateInfoProducts(
                                    titleScreen: 'Избранное',
                                  ),
                                );
                          }
                          context.back();
                        }
                      },
                      child: ListView(
                        controller: _scrollController,
                        children: [
                          const AppBarBlindChicken(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.5,
                              right: 10.5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 17.5,
                                ),
                                Text(
                                  'Корзина',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
                                  builder: (context, state) {
                                    return state.maybeMap(
                                      productsShoppingCart: (initState) {
                                        return initState.shoppingCart.basket.isEmpty
                                            ? Padding(
                                                padding: const EdgeInsets.only(top: 14.0),
                                                child: Text(
                                                  'В корзине пока пусто.',
                                                  style: Theme.of(context).textTheme.displayMedium,
                                                ),
                                              )
                                            : Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 17.5),
                                                    child: Column(
                                                      children: List.generate(
                                                        initState.shoppingCart.basket.length,
                                                        (index) {
                                                          return ShoppingCart(
                                                            isAuth: initState.isAuth,
                                                            isBordrerBottom: initState.shoppingCart
                                                                        .basket.length -
                                                                    1 !=
                                                                index,
                                                            count: initState
                                                                .shoppingCart.basket[index].count,
                                                            price: initState.shoppingCart
                                                                .basket[index].data.price,
                                                            onSelectCard: () {
                                                              if (initState.shoppingCart
                                                                      .basket[index].code !=
                                                                  '15846') {
                                                                context
                                                                    .read<ShoppingCartBloc>()
                                                                    .add(
                                                                      ShoppingCartEvent
                                                                          .getInfoProduct(
                                                                        code: initState.shoppingCart
                                                                            .basket[index].code,
                                                                        titleScreen:
                                                                            'Элемента списка в корзине',
                                                                        typeAddProductToShoppingCart:
                                                                            'Элемента списка',
                                                                        identifierAddProductToShoppingCart:
                                                                            '3',
                                                                      ),
                                                                    );
                                                                context.navigateTo(
                                                                  ShoppingCardInfoRoute(
                                                                    isChildRoute: false,
                                                                    item: initState.shoppingCart
                                                                        .basket[index].product,
                                                                    isLike: false,
                                                                    listItems: const [],
                                                                    favouritesProducts: initState
                                                                        .favouritesProducts,
                                                                  ),
                                                                );
                                                              } else {
                                                                context.read<CatalogBloc>().add(
                                                                      const CatalogEvent
                                                                          .getInfoServiceCard(
                                                                        code: '15846',
                                                                      ),
                                                                    );
                                                                context.navigateTo(
                                                                  HomeAutoRouterRoute(
                                                                    children: [
                                                                      ServiceCardRoute(),
                                                                    ],
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                            removeProduct: (value) {
                                                              context.read<ShoppingCartBloc>().add(
                                                                    ShoppingCartEvent
                                                                        .deleteProductToSoppingCart(
                                                                      index: index,
                                                                      item: value,
                                                                    ),
                                                                  );
                                                            },
                                                            item: initState
                                                                .shoppingCart.basket[index],
                                                            updateProduct: (value) {
                                                              context.read<ShoppingCartBloc>().add(
                                                                    ShoppingCartEvent
                                                                        .updateProductToSoppingCart(
                                                                      index: index,
                                                                      item: value,
                                                                    ),
                                                                  );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 64,
                                                  ),
                                                  ShoppingCartDeliveryUserInfo(
                                                    listAddress:
                                                        initState.deliveryInfo?.address ?? [],
                                                    isLoadDeleteAddress:
                                                        initState.isLoadDeleteAddress ?? false,
                                                    boutiques: initState.boutiques,
                                                    boutique: initState.boutique ??
                                                        initState.boutiques.data.first,
                                                    selectIndexAddres:
                                                        initState.selectIndexAddress ?? 0,
                                                    deleteIndexAddress:
                                                        initState.deleteIndexAddress ?? 0,
                                                    sum: initState.amountPaid +
                                                        (initState.delivery ?? 0) -
                                                        initState.bonuses -
                                                        initState.giftCards,
                                                    title: 'Получение',
                                                    subTitle: 'Войти или зарегистрироваться',
                                                    subTitle2: ', чтобы выбрать',
                                                    subTitle3: 'способ получения.',
                                                    isAuth: initState.isAuth,
                                                    onReceivingType: (value) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.changeReceivingType(
                                                                receivingType: value),
                                                          );
                                                    },
                                                    onAddressPickup: (value) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.changeUidPickUpPoint(
                                                              uidPickUpPoint: value.uidStore,
                                                            ),
                                                          );
                                                    },
                                                    onAddressDelivery:
                                                        (price, cityId, addressDelivery) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.addAddressDelivery(
                                                              addressDelivery:
                                                                  BasketAddressDataModel(
                                                                address: addressDelivery.address
                                                                        .replaceAll(
                                                                            RegExp(r"\s+"), '')
                                                                        .isNotEmpty
                                                                    ? addressDelivery.address
                                                                    : '',
                                                                zip: addressDelivery.zip,
                                                                cityId: addressDelivery.cityId,
                                                                city: addressDelivery.city,
                                                                street: addressDelivery.street,
                                                                house: addressDelivery.house,
                                                                flat: addressDelivery.flat,
                                                              ),
                                                              delivery: price,
                                                              cityId: cityId,
                                                            ),
                                                          );
                                                    },
                                                    onSelectAddressDelivery: (index) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.selectAddressDelivery(
                                                              index: index,
                                                            ),
                                                          );
                                                    },
                                                    deleteAddressDelivery: (id) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.deleteAddressDelivery(
                                                              id: id,
                                                            ),
                                                          );
                                                    },
                                                    receivingType: initState.receivingType,
                                                  ),
                                                  const SizedBox(
                                                    height: 64,
                                                  ),
                                                  ShoppingCartPayUserInfo(
                                                    title: 'Оплата',
                                                    subTitle: 'Войти или зарегистрироваться',
                                                    subTitle2: ', чтобы выбрать',
                                                    subTitle3: 'способ оплаты.',
                                                    isAuth: initState.isAuth,
                                                    payments: initState.payments,
                                                    onAddPayment: (value) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.bonuses(
                                                                bonuses: value),
                                                          );
                                                    },
                                                    onTypePay: (value) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.changePaymentType(
                                                              paymentId: value.id,
                                                              typePay:
                                                                  'Оплата ${value.name.toLowerCase()}',
                                                            ),
                                                          );
                                                    },
                                                    onAddGiftPayment: (value) {
                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.addGiftCard(
                                                              giftCard: value,
                                                            ),
                                                          );
                                                    },
                                                    isUponReceipt:
                                                        initState.receivingType != 'Самовывоз'
                                                            ? initState.isUponReceipt
                                                            : true,
                                                  ),
                                                  const SizedBox(
                                                    height: 56,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        initState.receivingType.isNotEmpty
                                                            ? initState.receivingType
                                                            : 'Способ получения',
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          _scrollController.jumpTo(
                                                            initState.shoppingCart.basket.length *
                                                                201,
                                                          );
                                                        },
                                                        child: SvgPicture.asset(
                                                          'assets/icons/pencil.svg',
                                                          height: 17.5,
                                                          width: 17.5,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    initState.receivingType == 'Доставка'
                                                        ? initState
                                                                .addressDelivery.address.isNotEmpty
                                                            ? initState.addressDelivery.address
                                                            : 'Адрес доставки не выбран'
                                                        : initState.address.isNotEmpty
                                                            ? initState.address
                                                            : 'Адрес доставки не выбран',
                                                    textAlign: TextAlign.start,
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        initState.typePay.isNotEmpty
                                                            ? initState.typePay
                                                            : 'Способ оплаты не выбран',
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          _scrollController.jumpTo(
                                                            initState.shoppingCart.basket.length *
                                                                201,
                                                          );
                                                        },
                                                        child: SvgPicture.asset(
                                                          'assets/icons/pencil.svg',
                                                          height: 17.5,
                                                          width: 17.5,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Товары, ${initState.numberProducts} шт.',
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium,
                                                      ),
                                                      Text(
                                                        '${'${initState.amountPaid}'.spaceSeparateNumbers()} ₽',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium,
                                                      ),
                                                    ],
                                                  ),
                                                  if (initState.bonuses > 0)
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 14),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Бонусы',
                                                            textAlign: TextAlign.start,
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                          Text(
                                                            '- ${'${initState.bonuses}'.spaceSeparateNumbers()} ₽',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if (initState.giftCards > 0)
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 14),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Подарочные карты',
                                                            textAlign: TextAlign.start,
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                          Text(
                                                            '- ${'${initState.giftCards}'.spaceSeparateNumbers()} ₽',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if (initState.receivingType == 'Доставка' &&
                                                      initState.delivery != null)
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Доставка',
                                                              textAlign: TextAlign.start,
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displayMedium,
                                                            ),
                                                            Text(
                                                              '${initState.delivery.toString().spaceSeparateNumbers()} ₽',
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displayMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  if (initState.isAuth)
                                                    ShoppingCartPromotionalCode(
                                                      isActivePromoCode:
                                                          initState.isActivePromoCode,
                                                      promoCode: initState.promoCode,
                                                      onSendPromotional: (value) {
                                                        context.read<ShoppingCartBloc>().add(
                                                              ShoppingCartEvent.promoCode(
                                                                promoCode: value,
                                                                uid: initState.uidPickUpPoint,
                                                              ),
                                                            );
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return ShoppingCartPaymentPromoCode(
                                                              titlePromocode: 'Активация промокода',
                                                              isEmpty: value.isEmpty,
                                                            );
                                                          },
                                                        );
                                                      },
                                                      onRemovePromotional: () {
                                                        context.read<ShoppingCartBloc>().add(
                                                              const ShoppingCartEvent
                                                                  .removePromoCode(),
                                                            );
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return const ShoppingCartPaymentPromoCode(
                                                              titlePromocode: 'Отмена промокода',
                                                              isEmpty: false,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  if (initState.isActivePromoCode)
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                        top: 7,
                                                        bottom: 14,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            WidgetSpan(
                                                              alignment: PlaceholderAlignment.top,
                                                              child: SvgPicture.asset(
                                                                'assets/icons/info.svg',
                                                                height: 14,
                                                                width: 14,
                                                              ),
                                                            ),
                                                            WidgetSpan(
                                                              child: SizedBox(
                                                                width: 5,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: initState
                                                                  .shoppingCart.promoDescription,
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  else
                                                    const SizedBox(
                                                      height: 16,
                                                    ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Итого',
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      Text(
                                                        '${'${initState.amountPaid + (initState.receivingType != 'Самовывоз' ? initState.delivery ?? 0 : 0) - initState.bonuses - initState.giftCards}'.spaceSeparateNumbers()} ₽',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 16,
                                                  ),
                                                  BlindChickenButtonShoppingCartProduct(
                                                    title: 'Заказать',
                                                    onChenge: () {
                                                      bool isValidAddress = initState
                                                          .addressDelivery.address.isNotEmpty;

                                                      context.read<ShoppingCartBloc>().add(
                                                            ShoppingCartEvent.createOrder(
                                                                request: BasketOrderRequest(
                                                              bonus: initState.bonuses > 0
                                                                  ? initState.bonuses.toString()
                                                                  : null,
                                                              promo: initState.promoCode,
                                                              delivery: BasketOrderDeliveryRequest(
                                                                adr: initState.receivingType !=
                                                                        'Самовывоз'
                                                                    ? initState
                                                                        .addressDelivery.address
                                                                    : '',
                                                                id: initState.receivingType ==
                                                                        'Самовывоз'
                                                                    ? '1'
                                                                    : '2',
                                                                pck: initState.receivingType ==
                                                                        'Самовывоз'
                                                                    ? initState.uidPickUpPoint
                                                                    : '',
                                                                zip: initState.receivingType !=
                                                                        'Самовывоз'
                                                                    ? initState.addressDelivery.zip
                                                                    : '',
                                                                adrId: initState.receivingType !=
                                                                        'Самовывоз'
                                                                    ? initState.addressDelivery
                                                                            .adrId ??
                                                                        ''
                                                                    : '',
                                                              ),
                                                              payment: initState.paymentId,
                                                              sert:
                                                                  initState.listGiftCard.isNotEmpty
                                                                      ? initState.listGiftCard
                                                                      : null,
                                                              city: initState.receivingType !=
                                                                      'Самовывоз'
                                                                  ? initState
                                                                          .addressDelivery.cityId ??
                                                                      ''
                                                                  : '',
                                                              isValidAddress:
                                                                  initState.receivingType !=
                                                                          'Самовывоз'
                                                                      ? isValidAddress
                                                                      : true,
                                                            )),
                                                          );

                                                      showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return const ShoppingCartCheckCreateOrder();
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              );
                                      },
                                      orElse: () => const SizedBox(),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (_isButtonTop)
                  GestureDetector(
                    onTap: () {
                      _scrollController.jumpTo(0.0);
                      setState(() {
                        _isButtonTop = false;
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
