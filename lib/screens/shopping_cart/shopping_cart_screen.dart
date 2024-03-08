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
  final bool _isAuth = false;
  ProductDataModel? product;
  String _titlePromocode = 'Активация промокода';
  String _receivingType = 'Самовывоз';
  String _typePay = 'Банковской картой';
  String _address = '';
  String _workingHours = '';
  BasketAddress _addressDelivery = BasketAddress(address: '', zip: '');

  String _uidPickUpPoint = '';
  String _paymentId = '1';

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShoppingCartBloc, ShoppingCartState>(
      listener: (context, state) {
        state.maybeMap(
          createOrderSuccessfully: (value) {
            context.read<AccountBloc>().add(
                  AccountEvent.getInfoPayOrder(
                    id: value.orderId.toString(),
                  ),
                );
            context.navigateTo(
              LoginRoute(
                children: [
                  OrderUserInfoRoute(isPay: true),
                ],
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: AppBarBlindChicken(),
            ),
            body: ListView(
              padding: const EdgeInsets.only(
                left: 10.5,
                right: 10.5,
              ),
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
                                            isBordrerBottom:
                                                initState.shoppingCart.basket.length - 1 != index,
                                            count: initState.shoppingCart.basket[index].count,
                                            price: initState.shoppingCart.basket[index].data.price,
                                            onSelectCard: () {
                                              context.read<ShoppingCartBloc>().add(
                                                    ShoppingCartEvent.getInfoProduct(
                                                      code:
                                                          initState.shoppingCart.basket[index].code,
                                                    ),
                                                  );
                                              context.navigateTo(
                                                ShoppingCardInfoRoute(
                                                  isChildRoute: false,
                                                  item:
                                                      initState.shoppingCart.basket[index].product,
                                                  isLike: false,
                                                  listItems: const [],
                                                  favouritesProducts: initState.favouritesProducts,
                                                ),
                                              );
                                            },
                                            removeProduct: (value) {
                                              context.read<ShoppingCartBloc>().add(
                                                    ShoppingCartEvent.deleteProductToSoppingCart(
                                                      index: index,
                                                      item: value,
                                                    ),
                                                  );
                                            },
                                            item: initState.shoppingCart.basket[index],
                                            updateProduct: (value) {
                                              context.read<ShoppingCartBloc>().add(
                                                    ShoppingCartEvent.updateProductToSoppingCart(
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
                                    boutiques: initState.boutiques,
                                    sum: initState.amountPaid +
                                        initState.delivery -
                                        initState.bonuses -
                                        initState.giftCards,
                                    title: 'Получение',
                                    subTitle: 'Войти или зарегистрироваться',
                                    subTitle2: ', чтобы выбрать',
                                    subTitle3: 'способ оплаты.',
                                    isAuth: _isAuth,
                                    onReceivingType: (value) {
                                      setState(() {
                                        _receivingType = value;
                                      });
                                    },
                                    onAddressPickup: (value) {
                                      setState(() {
                                        _address = value.address;
                                        _workingHours = value.schedule;
                                        _uidPickUpPoint = value.uidStore;
                                      });
                                    },
                                    onAddressDelivery: (value) {
                                      setState(() {
                                        _addressDelivery = BasketAddress(
                                          address: value.address,
                                          zip: value.zip,
                                          cityId: value.cityId,
                                        );
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    height: 64,
                                  ),
                                  ShoppingCartPayUserInfo(
                                    title: 'Оплата',
                                    subTitle: 'Войти или зарегистрироваться',
                                    subTitle2: ', чтобы выбрать',
                                    subTitle3: 'способ оплаты.',
                                    isAuth: _isAuth,
                                    payments: initState.payments,
                                    onAddPayment: (value) {
                                      context.read<ShoppingCartBloc>().add(
                                            ShoppingCartEvent.bonuses(bonuses: value),
                                          );
                                    },
                                    onTypePay: (value) {
                                      setState(() {
                                        _paymentId = value.id;
                                        _typePay = 'Оплата ${value.name.toLowerCase()}';
                                      });
                                    },
                                    onAddGiftPayment: (value) {
                                      context.read<ShoppingCartBloc>().add(
                                            ShoppingCartEvent.addGiftCard(
                                              giftCard: value,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 56,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _receivingType.isNotEmpty
                                            ? _receivingType
                                            : 'Способ получения',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/pencil.svg',
                                        height: 17.5,
                                        width: 17.5,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    _receivingType == 'Доставка'
                                        ? _addressDelivery.address.isNotEmpty
                                            ? _addressDelivery.address
                                            : 'Не выбран'
                                        : _address.isNotEmpty
                                            ? _address
                                            : 'Не выбран',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context).textTheme.displayMedium,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _typePay.isNotEmpty ? _typePay : 'Способ оплаты не выбран',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/pencil.svg',
                                        height: 17.5,
                                        width: 17.5,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Товары, ${initState.numberProducts} шт.',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.displayMedium,
                                      ),
                                      Text(
                                        '${'${initState.amountPaid}'.spaceSeparateNumbers()} ₽',
                                        style: Theme.of(context).textTheme.displayMedium,
                                      ),
                                    ],
                                  ),
                                  if (initState.bonuses > 0)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Бонусы',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                          Text(
                                            '- ${'${initState.bonuses}'.spaceSeparateNumbers()} ₽',
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (initState.giftCards > 0)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Подарочные карты',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                          Text(
                                            '- ${'${initState.giftCards}'.spaceSeparateNumbers()} ₽',
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (_receivingType == 'Доставка')
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Доставка',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context).textTheme.displayMedium,
                                            ),
                                            Text(
                                              '${initState.delivery.toString().spaceSeparateNumbers()} ₽',
                                              style: Theme.of(context).textTheme.displayMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (!_isAuth)
                                    ShoppingCartPromotionalCode(
                                      isActivePromoCode: initState.isActivePromoCode,
                                      promoCode: initState.promoCode,
                                      onSendPromotional: (value) {
                                        setState(() {
                                          _titlePromocode = 'Активация промокода';
                                        });
                                        context.read<ShoppingCartBloc>().add(
                                              ShoppingCartEvent.promoCode(
                                                promoCode: value,
                                                uid: _uidPickUpPoint,
                                              ),
                                            );
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return ShoppingCartPaymentPromoCode(
                                              titlePromocode: _titlePromocode,
                                              isEmpty: value.isEmpty,
                                            );
                                          },
                                        );
                                      },
                                      onRemovePromotional: () {
                                        setState(() {
                                          _titlePromocode = 'Отмена промокода';
                                        });
                                        context.read<ShoppingCartBloc>().add(
                                              const ShoppingCartEvent.removePromoCode(),
                                            );
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return ShoppingCartPaymentPromoCode(
                                              titlePromocode: _titlePromocode,
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
                                      child: SvgPicture.asset(
                                        'assets/icons/info.svg',
                                        height: 14,
                                        width: 14,
                                      ),
                                    )
                                  else
                                    const SizedBox(
                                      height: 16,
                                    ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Итого',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      Text(
                                        '${'${initState.amountPaid + initState.delivery - initState.bonuses - initState.giftCards}'.spaceSeparateNumbers()} ₽',
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BlindChickenButton(
                                    title: 'Заказать',
                                    onChenge: () {
                                      _uidPickUpPoint = _uidPickUpPoint.isNotEmpty
                                          ? _uidPickUpPoint
                                          : initState.boutiques.data.first.uidStore;
                                      context.read<ShoppingCartBloc>().add(
                                            ShoppingCartEvent.createOrder(
                                                request: BasketOrderRequest(
                                              bonus: initState.bonuses > 0
                                                  ? initState.bonuses.toString()
                                                  : null,
                                              promo: initState.promoCode,
                                              delivery: BasketOrderDeliveryRequest(
                                                adr: _receivingType != 'Самовывоз'
                                                    ? _addressDelivery.address
                                                    : '',
                                                id: _receivingType == 'Самовывоз' ? '1' : '2',
                                                pck: _receivingType == 'Самовывоз'
                                                    ? _uidPickUpPoint
                                                    : '',
                                                zip: _receivingType != 'Самовывоз'
                                                    ? _addressDelivery.zip
                                                    : '',
                                              ),
                                              payment: _paymentId,
                                              sert: initState.listGiftCard.isNotEmpty
                                                  ? initState.listGiftCard
                                                  : null,
                                              city: _receivingType != 'Самовывоз'
                                                  ? _addressDelivery.cityId ?? ''
                                                  : '',
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
    );
  }
}
