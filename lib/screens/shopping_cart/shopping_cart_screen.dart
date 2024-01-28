import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_delivery_user_info.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_pay_user_info.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_promotional_code.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
  String _receivingType = 'Самовывоз';
  String _typePay = 'Банковской картой';
  String _adress = 'Москва, ТЦ Афимолл Сити, 2 этаж, Department Store';
  String _workingHours = 'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00';
  int _deliveryPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  return initState.products.isEmpty
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
                                  initState.products.length,
                                  (index) {
                                    return ShoppingCart(
                                      isBordrerBottom: initState.products.length - 1 != index,
                                      onSelectCard: () {
                                        context.navigateTo(
                                          HomeAutoRouterRoute(
                                            children: [
                                              CatalogCardInfoRoute(
                                                isChildRoute: false,
                                                item: initState.products[index].product,
                                                isLike: false,
                                                addLike: () {
                                                  context.read<CatalogBloc>().add(
                                                        CatalogEvent.addFavouriteProduct(
                                                          product:
                                                              initState.products[index].product,
                                                          index: index,
                                                        ),
                                                      );
                                                },
                                                deleteLike: () {
                                                  context.read<CatalogBloc>().add(
                                                        CatalogEvent.deleteFavouriteProduct(
                                                          index: initState.favouritesProducts
                                                              .indexOf(initState
                                                                  .products[index].product),
                                                        ),
                                                      );
                                                },
                                                listItems: const [],
                                                favouritesProducts: initState.favouritesProducts,
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                      removeProduct: () {
                                        context.read<ShoppingCartBloc>().add(
                                              ShoppingCartEvent.deleteProductToSoppingCart(
                                                  index: index),
                                            );
                                      },
                                      product: initState.products[index].product,
                                      updateUnitProduct: (value) {
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
                              title: 'Получение',
                              subTitle: 'Войти или зарегистрироваться',
                              subTitle2: ', чтобы выбрать',
                              subTitle3: 'способ оплаты.',
                              isAuth: _isAuth,
                              onReceivingType: (value) {
                                setState(() {
                                  _receivingType = value;
                                  if (_receivingType == 'Доставка') {
                                    _deliveryPrice = 990;
                                  } else {
                                    _deliveryPrice = 0;
                                  }
                                });
                              },
                              onAddress: (adress, workingHours) {
                                setState(() {
                                  _adress = adress;
                                  _workingHours = workingHours;
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
                              onTypePay: (value) {
                                setState(() {
                                  _typePay = 'Оплата ${value.toLowerCase()}';
                                });
                              },
                            ),
                            const SizedBox(
                              height: 56,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _receivingType.isNotEmpty ? _receivingType : 'Способ получения',
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
                              _adress.isNotEmpty ? _adress : 'Не выбран',
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
                                        '${_deliveryPrice.toString().spaceSeparateNumbers()} ₽',
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
                                onSendPromotional: (value) {},
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
                                  '${'${initState.amountPaid + _deliveryPrice}'.spaceSeparateNumbers()} ₽',
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
                                context.navigateTo(
                                  (OrderRoute(
                                    receivingType: _receivingType,
                                    typePay: _typePay,
                                    adress: _adress,
                                    workingHours: _workingHours,
                                  )),
                                );
                                context.read<OrderBloc>().add(
                                      OrderEvent.orderInfo(
                                        products: initState.products,
                                        numberProducts: initState.numberProducts,
                                        amountPaid: initState.amountPaid,
                                        favouritesProducts: initState.favouritesProducts,
                                      ),
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
    );
  }
}
