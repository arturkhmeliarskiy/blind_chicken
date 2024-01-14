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
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
              'Личный кабинет',
              style: Theme.of(context).textTheme.subtitle2,
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
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    BlocBuilder<AccountBloc, AccountState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return Row(
                              children: [
                                if (initState.phone.isNotEmpty)
                                  Text(
                                    '+7 ${initState.phone}',
                                    style: Theme.of(context).textTheme.headline2,
                                  ),
                                if (initState.phone.isNotEmpty)
                                  const SizedBox(
                                    width: 14,
                                  ),
                                InkWell(
                                  onTap: () {
                                    context.navigateTo(const HomeAutoRouterRoute());
                                  },
                                  child: Text(
                                    'Выйти',
                                    style: Theme.of(context).textTheme.headline2?.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                              ],
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
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
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    BlocBuilder<AccountBloc, AccountState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return Row(
                              children: [
                                Text(
                                  initState.name.isNotEmpty ? initState.name : 'Не указано',
                                  style: Theme.of(context).textTheme.headline2,
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
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
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
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    BlocBuilder<AccountBloc, AccountState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return Row(
                              children: [
                                Text(
                                  initState.email.isNotEmpty ? initState.email : 'Не указано',
                                  style: Theme.of(context).textTheme.headline2,
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
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                  ]),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 210,
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const BlindChickenDiscountScale(
                  indexCurrency: 0,
                  listDiscount: [
                    '0',
                    '5',
                    '10',
                    '15',
                  ],
                  listPrice: [
                    'Покупки от',
                    '10 000',
                    '100 000',
                    '300 000',
                  ],
                  typeValue: '%',
                  firstSymbol: '',
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: BlindChickenColors.borderBottomColor,
                  padding: const EdgeInsets.all(2),
                  child: RichText(
                    text: TextSpan(
                      text: '10 000',
                      style: Theme.of(context).textTheme.headline3,
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ₽ ',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        TextSpan(
                          text: 'до скидки 5 %',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Бонусы',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'активно / всего',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    text: '0',
                    style: Theme.of(context).textTheme.headline2,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ₽ ',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                        text: '/ 0',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const TextSpan(
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
                  height: 8,
                ),
                Container(
                  color: BlindChickenColors.borderBottomColor,
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    'Кэшбэк до 27 % от суммы покупки',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ]),
            ),
            Container(
              height: 100,
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
                  Text(
                    'Заказы на сайте',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Электронные бланки заказов',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Заказы на подшив',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
