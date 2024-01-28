import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/order/widgets/order_card.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class OrderUserInfoScreen extends StatelessWidget {
  const OrderUserInfoScreen({
    super.key,
    required this.order,
  });

  final OrderDataModel order;

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
              GestureDetector(
                onTap: () {
                  context.navigateTo(
                    const AccountRoute(),
                  );
                },
                child: Text(
                  'Личный кабинет',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(
                    const MyOrdersRoute(),
                  );
                },
                child: Text(
                  'Заказы на сайте',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Заказ №${order.orderNumber}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontFamily: 'Roboto-Light',
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Заказ № ${order.orderNumber} от ${order.createAt}',
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
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            order.typePay,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '${order.amountPaid.toString().spaceSeparateNumbers()} ₽',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'не оплачено',
                style: Theme.of(context).textTheme.displaySmall,
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
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            order.receivingType,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            order.adress,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            order.workingHours,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
          BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
            return state.maybeMap(
              preloadDataCompleted: (initState) {
                return Padding(
                  padding: const EdgeInsets.only(top: 17.5),
                  child: Column(
                    children: List.generate(
                      order.products.length,
                      (index) {
                        return OrderCard(
                          isBordrerBottom: order.products.length - 1 != index,
                          onSelectCard: () {
                            context.navigateTo(
                              CatalogCardInfoRoute(
                                isChildRoute: false,
                                item: order.products[index].product,
                                isLike: false,
                                addLike: () {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.addFavouriteProduct(
                                          product: order.products[index].product,
                                          index: index,
                                        ),
                                      );
                                },
                                deleteLike: () {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.deleteFavouriteProduct(
                                          index: initState.favouritesProducts
                                              .indexOf(order.products[index].product),
                                        ),
                                      );
                                },
                                listItems: const [],
                                favouritesProducts: initState.favouritesProducts,
                              ),
                            );
                          },
                          product: order.products[index].product,
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
