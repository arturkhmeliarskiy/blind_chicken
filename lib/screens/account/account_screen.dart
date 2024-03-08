import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_discount_scale.dart';
import 'package:blind_chicken/screens/account/widgets/account_change_info_user.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          logOut: (value) {
            context.navigateTo(
              const DashboardRoute(children: [
                HomeAutoRouterRoute(),
              ]),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarBlindChicken(),
        ),
        body: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return ListView(
                      padding: const EdgeInsets.only(
                        left: 10.5,
                        right: 10.5,
                      ),
                      children: [
                        const SizedBox(
                          height: 17.5,
                        ),
                        Text(
                          'Личный кабинет',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 64,
                          padding: const EdgeInsets.only(
                            bottom: 14,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: BlindChickenColors.borderBottomColor,
                              ),
                            ),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Телефон',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                Row(
                                  children: [
                                    if (initState.phone.isNotEmpty)
                                      Text(
                                        '+${initState.phone}',
                                        style: Theme.of(context).textTheme.displayMedium,
                                      ),
                                    if (initState.phone.isNotEmpty)
                                      const SizedBox(
                                        width: 14,
                                      ),
                                    InkWell(
                                      onTap: () {
                                        context
                                            .read<AccountBloc>()
                                            .add(const AccountEvent.logOut());
                                      },
                                      child: Text(
                                        'Выйти',
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              decoration: TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 64,
                          padding: const EdgeInsets.only(
                            bottom: 14,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: BlindChickenColors.borderBottomColor,
                              ),
                            ),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Имя',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      initState.name.isNotEmpty ? initState.name : 'Не указано',
                                      style: Theme.of(context).textTheme.displayMedium,
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (contex) {
                                              return AccountChangeInfoUser(
                                                title: 'Изменить имя',
                                                subTitle: 'Имя',
                                                value: initState.name,
                                                onChange: (value) {
                                                  contex.read<AccountBloc>().add(
                                                        AccountEvent.updateInfo(
                                                          name: value,
                                                        ),
                                                      );
                                                },
                                              );
                                            });
                                      },
                                      child: SvgPicture.asset(
                                        'assets/icons/pencil.svg',
                                        height: 17.5,
                                        width: 17.5,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 64,
                          padding: const EdgeInsets.only(
                            bottom: 14,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: BlindChickenColors.borderBottomColor,
                              ),
                            ),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      initState.email.isNotEmpty ? initState.email : 'Не указано',
                                      style: Theme.of(context).textTheme.displayMedium,
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (contex) {
                                              return AccountChangeInfoUser(
                                                title: 'Изменить email',
                                                subTitle: 'Email',
                                                value: initState.email,
                                                onChange: (value) {
                                                  contex.read<AccountBloc>().add(
                                                        AccountEvent.updateInfo(
                                                          email: value,
                                                        ),
                                                      );
                                                },
                                              );
                                            });
                                      },
                                      child: SvgPicture.asset(
                                        'assets/icons/pencil.svg',
                                        height: 17.5,
                                        width: 17.5,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 215,
                          padding: const EdgeInsets.only(
                            bottom: 14,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: BlindChickenColors.borderBottomColor,
                              ),
                            ),
                          ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'Скидка',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            if (initState.user?.schemLoyalty.isNotEmpty ?? false)
                              LayoutBuilder(builder: (context, constraints) {
                                final listDiscount = initState.user?.schemLoyalty
                                        .map((item) => item.discount.toString())
                                        .toList() ??
                                    [];
                                final listPrice = initState.user?.schemLoyalty
                                        .map((item) => item.value.toString())
                                        .toList() ??
                                    [];
                                listPrice.removeLast();
                                return BlindChickenDiscountScale(
                                  isFirstFontWeight: true,
                                  indexCurrency: 0,
                                  listDiscount: listDiscount,
                                  listPrice: [
                                    'Покупки от',
                                    ...listPrice,
                                  ],
                                  typeValue: '%',
                                  firstSymbol: '',
                                  userDiscount: initState.user?.discount ?? 0,
                                );
                              })
                            else
                              BlindChickenDiscountScale(
                                isFirstFontWeight: true,
                                indexCurrency: 0,
                                listDiscount: const [
                                  '0',
                                  '5',
                                  '10',
                                  '15',
                                ],
                                listPrice: const [
                                  'Покупки от',
                                  '10 000',
                                  '100 000',
                                  '300 000',
                                ],
                                typeValue: '%',
                                firstSymbol: '',
                                userDiscount: initState.user?.discount ?? 0,
                              ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: BlindChickenColors.borderBottomColor,
                              padding: const EdgeInsets.all(2),
                              child: RichText(
                                text: TextSpan(
                                  text: initState.user?.buyForNext.toString(),
                                  style: Theme.of(context).textTheme.displaySmall,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' ₽ ',
                                      style: Theme.of(context).textTheme.displaySmall,
                                    ),
                                    TextSpan(
                                      text: 'до скидки 5 %',
                                      style: Theme.of(context).textTheme.displaySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Бонусы',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'активно / всего',
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '0 ₽ / 0 ₽',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              color: BlindChickenColors.borderBottomColor,
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                'Кэшбэк до 27 % от суммы покупки',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: BlindChickenColors.borderBottomColor,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.read<AccountBloc>().add(const AccountEvent.getOrders());
                                  context.navigateTo(const MyOrdersRoute());
                                },
                                child: Text(
                                  'Мои заказы',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     context.navigateTo(const ElectronicOrderFormsRoute());
                              //   },
                              //   child: Text(
                              //     'Электронные бланки заказов',
                              //     style: Theme.of(context).textTheme.displayMedium,
                              //   ),
                              // ),
                              // InkWell(
                              //   onTap: () {
                              //     context.navigateTo(const OrdersHemmingRoute());
                              //   },
                              //   child: Text(
                              //     'Заказы на подшив',
                              //     style: Theme.of(context).textTheme.displayMedium,
                              //   ),
                              // ),
                            ],
                          ),
                        )
                      ]);
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
          },
        ),
      ),
    );
  }
}
