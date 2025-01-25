import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/account/widgets/order_gift_card.dart';
import 'package:blind_chicken/screens/account/widgets/order_product_card.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class OrderUserInfoScreen extends StatefulWidget {
  const OrderUserInfoScreen({
    super.key,
    required this.isPay,
    required this.orderId,
  });

  final bool isPay;
  final String orderId;

  @override
  State<OrderUserInfoScreen> createState() => _OrderUserInfoScreenState();
}

class _OrderUserInfoScreenState extends State<OrderUserInfoScreen> {
  final BlindChickenShowDialogError _blindChickenOrderUserInfoShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogMyOrdersError = false;
  String? _swipeDirection;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isError ?? false) {
              final typeError = initState.typeError ?? '';
              if (!_isShowDialogMyOrdersError && typeError == 'заказ') {
                _isShowDialogMyOrdersError = true;
                _blindChickenOrderUserInfoShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<AccountBloc, AccountState>(
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
                    context.read<AccountBloc>().add(
                          AccountEvent.getInfoOrder(
                            id: widget.orderId,
                          ),
                        );
                  },
                );
              }
            } else {
              if (_isShowDialogMyOrdersError && !(initState.isError ?? false)) {
                _isShowDialogMyOrdersError = false;
                _blindChickenOrderUserInfoShowDialogError.closeShowDialog();
              }
            }
          },
          payOrder: (value) {
            context.navigateTo(
              SberbankPaymentWebViewRoute(
                url: value.url,
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              context.read<AccountBloc>().add(const AccountEvent.getOrders());
              context.navigateTo(MyOrdersRoute());
            },
            child: SafeArea(
              child: Scaffold(
                body: BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
                  return state.maybeMap(
                      preloadDataCompleted: (initState) {
                        final paidInfo = initState.orderInfo?.paidInfo ?? '';
                        final status = (initState.orderInfo?.status ?? '').toLowerCase();
                        final idForPay = initState.orderInfo?.idForPay ?? '';
                        return ListView(
                          children: [
                            const AppBarBlindChicken(),
                            initState.isError ?? false
                                ? SizedBox()
                                : Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10.5,
                                      right: 10.5,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                context
                                                    .read<AccountBloc>()
                                                    .add(const AccountEvent.getOrders());
                                                context.navigateTo(MyOrdersRoute());
                                              },
                                              child: SvgPicture.asset(
                                                'assets/icons/arrow-left.svg',
                                                height: 24,
                                                width: 24,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                context
                                                    .read<AccountBloc>()
                                                    .add(const AccountEvent.preloadData());
                                                context.navigateTo(
                                                  const AccountRoute(),
                                                );
                                              },
                                              child: Text(
                                                'Личный кабинет',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      height: 1,
                                                    ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                context
                                                    .read<AccountBloc>()
                                                    .add(const AccountEvent.getOrders());
                                                context.navigateTo(
                                                  const MyOrdersRoute(),
                                                );
                                              },
                                              child: Text(
                                                'Мои заказы',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      height: 1,
                                                    ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'Заказ №${initState.orderInfo?.id}',
                                              style:
                                                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                        fontFamily: 'Roboto-Light',
                                                        height: 1,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          // ignore: unnecessary_brace_in_string_interps
                                          'Заказ № ${initState.orderInfo?.id} от ${initState.orderInfo?.date}',
                                          style: Theme.of(context).textTheme.titleSmall,
                                        ),
                                        Text(
                                          'Принят',
                                          style: Theme.of(context).textTheme.bodyMedium,
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/credit_card.svg',
                                              width: 17.5,
                                              height: 17.5,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              'Оплата',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Text(
                                          initState.orderInfo?.paymentName ?? '',
                                          style: Theme.of(context).textTheme.bodyMedium,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '${initState.orderInfo?.sumForPaid.toString().spaceSeparateNumbers()} ₽',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              initState.orderInfo?.paidInfo ?? '',
                                              style: Theme.of(context).textTheme.displaySmall,
                                            ),
                                          ],
                                        ),
                                        if (widget.isPay ||
                                            (paidInfo == 'не оплачено' &&
                                                status == 'принят' &&
                                                idForPay.isNotEmpty))
                                          Column(
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              BlindChickenButtonOrderInfo(
                                                title: 'Оплатить',
                                                height: 40,
                                                onChenge: () {
                                                  context.read<AccountBloc>().add(
                                                        AccountEvent.payOrder(
                                                          idForPay:
                                                              initState.orderInfo?.idForPay ?? '',
                                                        ),
                                                      );
                                                },
                                              ),
                                            ],
                                          ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        const Divider(
                                          color: BlindChickenColors.borderBottomColor,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/point_locate.svg',
                                              height: 17.5,
                                              width: 17.5,
                                            ),
                                            const SizedBox(
                                              width: 7,
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
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Text(
                                          initState.orderInfo?.delivery.method ?? '',
                                          style: Theme.of(context).textTheme.bodyMedium,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          initState.orderInfo?.delivery.address ?? '',
                                          style: Theme.of(context).textTheme.displayMedium,
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        if ((initState.orderInfo?.delivery.method ?? '') ==
                                                'Доставка' &&
                                            int.parse(initState.orderInfo?.delivery.price ?? '') >
                                                0)
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Стоимость',
                                                style: Theme.of(context).textTheme.displayMedium,
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: initState.orderInfo?.delivery.price ?? '',
                                                  style: Theme.of(context).textTheme.displayMedium,
                                                  children: const <TextSpan>[
                                                    TextSpan(
                                                      text: ' ₽ ',
                                                      style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 14,
                                              ),
                                            ],
                                          ),
                                        const Divider(
                                          color: BlindChickenColors.borderBottomColor,
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/product.svg',
                                              height: 17.5,
                                              width: 17.5,
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              'Товары',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 17.5),
                                          child: LayoutBuilder(builder: (context, constraints) {
                                            OrderInfoDataModel? orderInfo = initState.orderInfo;
                                            if (orderInfo != null) {
                                              if (orderInfo.giftCard.name.isNotEmpty) {
                                                return OrderGiftCard(
                                                  onSelectCard: () {
                                                    context
                                                        .read<GiftCardBloc>()
                                                        .add(const GiftCardEvent.preloadData(
                                                          isNotification: false,
                                                          searchQuery: '',
                                                        ));
                                                    context.navigateTo(
                                                      HomeAutoRouterRoute(
                                                        children: [GiftCardRoute()],
                                                      ),
                                                    );
                                                  },
                                                  giftCard: orderInfo.giftCard,
                                                );
                                              } else {
                                                return Column(
                                                  children: List.generate(
                                                    initState.orderInfo?.products.length ?? 0,
                                                    (index) {
                                                      return OrderProductCard(
                                                        isBordrerBottom:
                                                            (initState.orderInfo?.products.length ??
                                                                        0) -
                                                                    1 !=
                                                                index,
                                                        onSelectCard: () {
                                                          context
                                                              .read<ShoppingCartBloc>()
                                                              .add(ShoppingCartEvent.init());
                                                          context.read<AccountBloc>().add(
                                                                AccountEvent.getInfoProduct(
                                                                  code: orderInfo.products[index].id
                                                                      .toString(),
                                                                  titleScreen:
                                                                      'Элемент списка заказа',
                                                                  typeAddProductToShoppingCart:
                                                                      'Элемент списка',
                                                                  identifierAddProductToShoppingCart:
                                                                      '3',
                                                                ),
                                                              );
                                                          context.navigateTo(
                                                            OrderCardInfoRoute(
                                                              isChildRoute: false,
                                                              item: orderInfo.products[index],
                                                              isLike: initState.favouritesProductsId
                                                                  .contains(
                                                                      orderInfo.products[index].id),
                                                              listItems: const [],
                                                              favouritesProducts:
                                                                  initState.favouritesProducts,
                                                            ),
                                                          );
                                                        },
                                                        product: orderInfo.products[index],
                                                        price: (orderInfo.products[index].price *
                                                                int.parse(orderInfo
                                                                        .products[index].count ??
                                                                    '0'))
                                                            .toString(),
                                                      );
                                                    },
                                                  ),
                                                );
                                              }
                                            } else {
                                              return const SizedBox();
                                            }
                                          }),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        );
                      },
                      orElse: () => const SizedBox(),
                      load: (value) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            backgroundColor: Colors.grey.shade400,
                          ),
                        );
                      });
                }),
              ),
            ),
          ),
          GestureDetector(
            onPanUpdate: (details) {
              _swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
            },
            onPanEnd: (details) {
              if (_swipeDirection == null) {
                return;
              }
              if (_swipeDirection == 'left') {}
              if (_swipeDirection == 'right') {
                context.read<AccountBloc>().add(const AccountEvent.getOrders());
                context.navigateTo(MyOrdersRoute());
              }
            },
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 50,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
