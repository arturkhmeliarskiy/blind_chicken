import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/order/widgets/order_card.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({
    super.key,
    required this.receivingType,
    required this.typePay,
    required this.adress,
    required this.workingHours,
  });

  final String receivingType;
  final String typePay;
  final String adress;
  final String workingHours;

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
            height: 16,
          ),
          Row(
            children: [
              Text(
                'Личный кабинет',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Заказы на сайте',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                width: 8,
              ),
              BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
                return state.maybeMap(
                    productsOrder: (initState) {
                      return Text(
                        'Заказ №${initState.orderNumber}',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontFamily: 'Roboto-Light',
                            ),
                      );
                    },
                    orElse: () => const SizedBox());
              })
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return state.maybeMap(
                  productsOrder: (initState) {
                    return Text(
                      'Заказ № ${initState.orderNumber} от ${initState.dateRegistration}',
                      style: Theme.of(context).textTheme.subtitle2,
                    );
                  },
                  orElse: () => const SizedBox());
            },
          ),
          Text(
            'Принят',
            style: Theme.of(context).textTheme.bodyText2,
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
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            typePay,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 5,
          ),
          BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
            return state.maybeMap(
              productsOrder: (initState) {
                return Row(
                  children: [
                    Text(
                      '${initState.amountPaid.toString().spaceSeparateNumbers()} ₽',
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'не оплачено',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                );
              },
              orElse: () => const SizedBox(),
            );
          }),
          const SizedBox(
            height: 8,
          ),
          BlindChickenButton(
            title: 'Оплатить',
            height: 40,
            onChenge: () {},
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
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            receivingType,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            adress,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            workingHours,
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontFamily: 'Roboto-Light',
                ),
          ),
          const SizedBox(
            height: 14,
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
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
            return state.maybeMap(
              productsOrder: (initState) {
                return Padding(
                  padding: const EdgeInsets.only(top: 17.5),
                  child: Column(
                    children: List.generate(
                      initState.products.length,
                      (index) {
                        return OrderCard(
                          isBordrerBottom: initState.products.length - 1 != index,
                          onSelectCard: () {
                            context.navigateTo(
                              CatalogCardInfoRoute(
                                item: initState.products[index].product,
                                isLike: false,
                                addLike: () {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.addFavouriteProduct(
                                          product: initState.products[index].product,
                                          index: index,
                                        ),
                                      );
                                },
                                deleteLike: () {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.deleteFavouriteProduct(
                                          index: initState.favouritesProducts
                                              .indexOf(initState.products[index].product),
                                        ),
                                      );
                                },
                                listItems: const [],
                                favouritesProducts: initState.favouritesProducts,
                              ),
                            );
                          },
                          product: initState.products[index].product,
                        );
                      },
                    ),
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
