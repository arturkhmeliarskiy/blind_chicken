import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_discount_scale.dart';
import 'package:blind_chicken/screens/account/account_virtual_card.dart';
import 'package:blind_chicken/screens/account/widgets/account_change_info_user.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final BlindChickenShowDialogError _blindChickenAccountShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogAccountError = false;
  Timer? timer;
  bool _isSwipe = true;

  @override
  void initState() {
    context.read<AccountBloc>().add(
          const AccountEvent.virtualCardsCod(),
        );

    timer = Timer.periodic(
      const Duration(seconds: 15),
      (timer) {
        if (context.router.currentPath == '/dashboard/login/account') {
          context.read<AccountBloc>().add(
                const AccountEvent.virtualCardsCod(),
              );
        } else {
          timer.cancel();
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          logOut: (value) {
            context.read<CatalogBloc>().add(const CatalogEvent.preloadData());

            context.navigateTo(
              const DashboardRoute(
                children: [
                  HomeAutoRouterRoute(),
                ],
              ),
            );
          },
          removeAccount: (value) {
            context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
            context.navigateTo(
              const DashboardRoute(
                children: [
                  HomeAutoRouterRoute(),
                ],
              ),
            );
          },
          error: (value) {
            if (!_isShowDialogAccountError) {
              _isShowDialogAccountError = true;
              _blindChickenAccountShowDialogError.openShowDualog(
                context: context,
                errorMessage: value.errorMessage,
                widget: BlocBuilder<AccountBloc, AccountState>(
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
                  context.read<AccountBloc>().add(const AccountEvent.preloadData());
                  context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                },
              );
            }
          },
          preloadDataCompleted: (value) {
            if (_isShowDialogAccountError) {
              _isShowDialogAccountError = false;
              _blindChickenAccountShowDialogError.closeShowDialog();
            }
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          Stack(
            children: [
              SafeArea(
                child: Scaffold(
                  body: BlocBuilder<AccountBloc, AccountState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            final status = initState.user?.status ?? '';
                            return PopScope(
                              canPop: false,
                              onPopInvoked: (value) {
                                if (_isSwipe && !value) {
                                  context.back();
                                }
                              },
                              child: initState.isError ?? false
                                  ? Column(
                                      children: [
                                        const AppBarBlindChicken(),
                                        Expanded(
                                          child: BlindChickenErrorInfo(
                                            errorMessage: initState.errorMessage ?? '',
                                            onRepeatRequest: () {
                                              context.read<AccountBloc>().add(
                                                    const AccountEvent.preloadData(),
                                                  );
                                            },
                                          ),
                                        )
                                      ],
                                    )
                                  : ListView(
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
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'Личный кабинет',
                                                    style: Theme.of(context).textTheme.titleSmall,
                                                  ),
                                                ],
                                              ),
                                              if (initState.virtualCardsCod.isNotEmpty)
                                                const SizedBox(
                                                  height: 14,
                                                ),
                                              if (initState.virtualCardsCod.isNotEmpty)
                                                GestureDetector(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                      context: context,
                                                      isScrollControlled: true,
                                                      builder: (context) {
                                                        return const AccountVirtualCardScreen();
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 264,
                                                    padding: const EdgeInsets.only(
                                                      bottom: 14,
                                                    ),
                                                    decoration: const BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide(
                                                          color:
                                                              BlindChickenColors.borderBottomColor,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            'Карта лояльности',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium
                                                                ?.copyWith(
                                                                  color: BlindChickenColors
                                                                      .activeBorderTextField
                                                                      .withOpacity(0.8),
                                                                ),
                                                          ),
                                                          if (initState.virtualCardsCod.isNotEmpty)
                                                            Container(
                                                              height: 220,
                                                              width:
                                                                  MediaQuery.of(context).size.width,
                                                              decoration: BoxDecoration(
                                                                color: BlindChickenColors
                                                                    .borderBottomColor,
                                                                borderRadius:
                                                                    BorderRadius.circular(15),
                                                              ),
                                                              padding: const EdgeInsets.all(15),
                                                              child: LayoutBuilder(
                                                                builder: (context, constraints) {
                                                                  if (!(initState
                                                                          .isLoadVirtualCardsCod ??
                                                                      true)) {
                                                                    return Row(
                                                                      children: [
                                                                        Container(
                                                                          padding:
                                                                              const EdgeInsets.all(
                                                                                  10),
                                                                          decoration: BoxDecoration(
                                                                            color: BlindChickenColors
                                                                                .backgroundColor,
                                                                            borderRadius:
                                                                                BorderRadius
                                                                                    .circular(15),
                                                                          ),
                                                                          child: BlindChickenQrCode(
                                                                            data: initState
                                                                                .virtualCardsCod,
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          width: 20,
                                                                        ),
                                                                        Expanded(
                                                                          child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment
                                                                                    .end,
                                                                            children: [
                                                                              if (status ==
                                                                                      'VIP stylist' ||
                                                                                  status ==
                                                                                      'Platinum')
                                                                                AnimatedTextKit(
                                                                                  isRepeatingAnimation:
                                                                                      true,
                                                                                  pause: Duration(
                                                                                      milliseconds:
                                                                                          0),
                                                                                  animatedTexts: [
                                                                                    ColorizeAnimatedText(
                                                                                      initState.user
                                                                                              ?.status ??
                                                                                          '',
                                                                                      textStyle: Theme.of(
                                                                                                  context)
                                                                                              .textTheme
                                                                                              .headlineMedium
                                                                                              ?.copyWith(
                                                                                                fontWeight:
                                                                                                    FontWeight.w700,
                                                                                              ) ??
                                                                                          TextStyle(),
                                                                                      colors: [
                                                                                        const Color
                                                                                            .fromARGB(
                                                                                            255,
                                                                                            116,
                                                                                            115,
                                                                                            115),
                                                                                        const Color
                                                                                            .fromARGB(
                                                                                            255,
                                                                                            218,
                                                                                            218,
                                                                                            218),
                                                                                        const Color
                                                                                            .fromARGB(
                                                                                            255,
                                                                                            84,
                                                                                            84,
                                                                                            84),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                  repeatForever:
                                                                                      true,
                                                                                ),
                                                                              if (status ==
                                                                                  'Stylist')
                                                                                Text(
                                                                                  status,
                                                                                  style: Theme.of(
                                                                                          context)
                                                                                      .textTheme
                                                                                      .headlineMedium
                                                                                      ?.copyWith(
                                                                                        fontWeight:
                                                                                            FontWeight
                                                                                                .w700,
                                                                                      ),
                                                                                ),
                                                                              if (status.isNotEmpty)
                                                                                const SizedBox(
                                                                                  height: 20,
                                                                                ),
                                                                              Expanded(
                                                                                child: Container(
                                                                                  decoration:
                                                                                      BoxDecoration(
                                                                                    color: BlindChickenColors
                                                                                        .backgroundColor,
                                                                                    borderRadius:
                                                                                        BorderRadius
                                                                                            .circular(
                                                                                                15),
                                                                                  ),
                                                                                  padding:
                                                                                      const EdgeInsets
                                                                                          .only(
                                                                                          top: 10,
                                                                                          left: 16),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Column(
                                                                                        crossAxisAlignment:
                                                                                            CrossAxisAlignment
                                                                                                .start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Скидка',
                                                                                            style: Theme.of(context)
                                                                                                .textTheme
                                                                                                .displayMedium,
                                                                                          ),
                                                                                          const SizedBox(
                                                                                            height:
                                                                                                2,
                                                                                          ),
                                                                                          Text(
                                                                                            '${initState.user?.discount ?? 0} %',
                                                                                            style: Theme.of(context)
                                                                                                .textTheme
                                                                                                .titleLarge,
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              Expanded(
                                                                                child: Container(
                                                                                  decoration:
                                                                                      BoxDecoration(
                                                                                    color: BlindChickenColors
                                                                                        .backgroundColor,
                                                                                    borderRadius:
                                                                                        BorderRadius
                                                                                            .circular(
                                                                                                15),
                                                                                  ),
                                                                                  padding:
                                                                                      const EdgeInsets
                                                                                          .only(
                                                                                          top: 10,
                                                                                          left: 16),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child:
                                                                                            Column(
                                                                                          crossAxisAlignment:
                                                                                              CrossAxisAlignment
                                                                                                  .start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Бонусы',
                                                                                              style: Theme.of(context)
                                                                                                  .textTheme
                                                                                                  .displayMedium,
                                                                                            ),
                                                                                            const SizedBox(
                                                                                              height:
                                                                                                  2,
                                                                                            ),
                                                                                            FittedBox(
                                                                                              fit: BoxFit
                                                                                                  .fitWidth,
                                                                                              child:
                                                                                                  Text(
                                                                                                '${(initState.user?.activeBonus ?? 0).toString().spaceSeparateNumbers()} ₽ ',
                                                                                                style:
                                                                                                    Theme.of(context).textTheme.titleLarge,
                                                                                                maxLines:
                                                                                                    1,
                                                                                              ),
                                                                                            )
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    );
                                                                  } else {
                                                                    return Center(
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        color: Colors.black,
                                                                        backgroundColor:
                                                                            Colors.grey.shade400,
                                                                      ),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                            ),
                                                        ]),
                                                  ),
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Телефон',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              color: BlindChickenColors
                                                                  .activeBorderTextField
                                                                  .withOpacity(0.8),
                                                            ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          if (initState.phone.isNotEmpty)
                                                            Text(
                                                              '+${initState.phone}',
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displayMedium,
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
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displayMedium
                                                                  ?.copyWith(
                                                                    decoration:
                                                                        TextDecoration.underline,
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Имя',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              color: BlindChickenColors
                                                                  .activeBorderTextField
                                                                  .withOpacity(0.8),
                                                            ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            initState.name.isNotEmpty
                                                                ? initState.name
                                                                : 'Не указано',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
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
                                                                        contex
                                                                            .read<AccountBloc>()
                                                                            .add(
                                                                              AccountEvent
                                                                                  .updateInfo(
                                                                                name: value,
                                                                                email:
                                                                                    initState.email,
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Email',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              color: BlindChickenColors
                                                                  .activeBorderTextField
                                                                  .withOpacity(0.8),
                                                            ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            initState.email.isNotEmpty
                                                                ? initState.email
                                                                : 'Не указано',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
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
                                                                        contex
                                                                            .read<AccountBloc>()
                                                                            .add(
                                                                              AccountEvent
                                                                                  .updateInfo(
                                                                                email: value,
                                                                                name:
                                                                                    initState.name,
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
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Скидка',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              color: BlindChickenColors
                                                                  .activeBorderTextField
                                                                  .withOpacity(0.8),
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      if ((initState.user?.discount ?? 0) >= 15)
                                                        LayoutBuilder(
                                                            builder: (context, constraints) {
                                                          final listDiscount = initState
                                                                  .user?.schemLoyalty
                                                                  .map((item) =>
                                                                      item.discount.toString())
                                                                  .toList() ??
                                                              [];
                                                          final listPrice = initState
                                                                  .user?.schemLoyalty
                                                                  .map((item) =>
                                                                      item.value.toString())
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
                                                            userDiscount:
                                                                initState.user?.discount ?? 0,
                                                          );
                                                        })
                                                      else
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
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
                                                                '20 000',
                                                                '200 000',
                                                                '500 000',
                                                              ],
                                                              typeValue: '%',
                                                              firstSymbol: '',
                                                              userDiscount:
                                                                  initState.user?.discount ?? 0,
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Container(
                                                              color: BlindChickenColors
                                                                  .borderBottomColor,
                                                              padding: const EdgeInsets.all(2),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  text: initState
                                                                              .user?.buyForNext !=
                                                                          0
                                                                      ? initState.user?.buyForNext
                                                                          .toString()
                                                                          .spaceSeparateNumbers()
                                                                      : '10 000',
                                                                  style: Theme.of(context)
                                                                      .textTheme
                                                                      .displaySmall,
                                                                  children: <TextSpan>[
                                                                    TextSpan(
                                                                      text: ' ₽ ',
                                                                      style: Theme.of(context)
                                                                          .textTheme
                                                                          .displaySmall,
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'до скидки ${initState.user?.nextDiscount != 0 ? initState.user?.nextDiscount : 5} %',
                                                                      style: Theme.of(context)
                                                                          .textTheme
                                                                          .displaySmall,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      if ((initState.user?.limit ?? 0) > 0)
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 4),
                                                          child: Text(
                                                            'Доступно ${(initState.user?.rest ?? 0).toString().spaceSeparateNumbers()} ₽ из ${(initState.user?.limit ?? 0).toString().spaceSeparateNumbers()} ₽',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium
                                                                ?.copyWith(
                                                                  color: BlindChickenColors
                                                                      .activeBorderTextField
                                                                      .withOpacity(0.8),
                                                                ),
                                                          ),
                                                        ),
                                                      const SizedBox(
                                                        height: 14,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            'Бонусы',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium
                                                                ?.copyWith(
                                                                  color: BlindChickenColors
                                                                      .activeBorderTextField
                                                                      .withOpacity(0.8),
                                                                ),
                                                          ),
                                                          const SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                            'активно / всего',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displaySmall
                                                                ?.copyWith(
                                                                  color: BlindChickenColors
                                                                      .activeBorderTextField
                                                                      .withOpacity(0.8),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      Text(
                                                        '${(initState.user?.activeBonus ?? 0).toString().spaceSeparateNumbers()} ₽ '
                                                        '/ ${(initState.user?.allBonus ?? 0).toString().spaceSeparateNumbers()} ₽',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displayMedium
                                                            ?.copyWith(
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                      ),
                                                      Column(
                                                        children: [
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          Container(
                                                            color: BlindChickenColors
                                                                .borderBottomColor,
                                                            padding: const EdgeInsets.all(2),
                                                            child: Text(
                                                              'Кэшбэк до 27 % от суммы покупки',
                                                              style: Theme.of(context)
                                                                  .textTheme
                                                                  .displaySmall,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Container(
                                                height: 120,
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: BlindChickenColors.borderBottomColor,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 14,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            context.read<AccountBloc>().add(
                                                                const AccountEvent.getOrders());
                                                            context
                                                                .navigateTo(const MyOrdersRoute());
                                                          },
                                                          child: Text(
                                                            'Мои заказы',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 13,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            context.read<AccountBloc>().add(
                                                                const AccountEvent
                                                                    .getListOrdersBlank());
                                                            context.navigateTo(
                                                                const ElectronicOrderFormsRoute());
                                                          },
                                                          child: Text(
                                                            'Электронные бланки заказов',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 13,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            context.read<AccountBloc>().add(
                                                                const AccountEvent
                                                                    .getListTailoringBlank());
                                                            context.navigateTo(
                                                                const TailoringOrderFormsRoute());
                                                          },
                                                          child: Text(
                                                            'Заказы на подшив',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .displayMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 24,
                                              ),
                                              Text(
                                                'Версия приложения: ${initState.applicationVersion}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium
                                                    ?.copyWith(
                                                      color: BlindChickenColors.textInput,
                                                    ),
                                              ),
                                              const SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.center,
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(4),
                                                                  ),
                                                                  height: 100,
                                                                  width: MediaQuery.of(context)
                                                                          .size
                                                                          .width -
                                                                      80,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment.center,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment.center,
                                                                      children: [
                                                                        Text(
                                                                          'Удалить аккаунт?',
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .headlineLarge,
                                                                        ),
                                                                        const SizedBox(
                                                                          height: 20,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .spaceBetween,
                                                                          children: [
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                context.maybePop();
                                                                              },
                                                                              child: Container(
                                                                                height: 34,
                                                                                width: 80,
                                                                                margin:
                                                                                    const EdgeInsets
                                                                                        .only(
                                                                                        left: 16),
                                                                                decoration:
                                                                                    BoxDecoration(
                                                                                  color: BlindChickenColors
                                                                                      .activeBorderTextField,
                                                                                  borderRadius:
                                                                                      BorderRadius
                                                                                          .circular(
                                                                                              4),
                                                                                ),
                                                                                alignment: Alignment
                                                                                    .center,
                                                                                child: Text(
                                                                                  'Отмена',
                                                                                  style: Theme.of(
                                                                                          context)
                                                                                      .textTheme
                                                                                      .displayMedium
                                                                                      ?.copyWith(
                                                                                        color: BlindChickenColors
                                                                                            .backgroundColor,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                context.maybePop();
                                                                                context
                                                                                    .read<
                                                                                        AccountBloc>()
                                                                                    .add(const AccountEvent
                                                                                        .removeAccount());
                                                                              },
                                                                              child: Container(
                                                                                height: 34,
                                                                                width: 80,
                                                                                margin:
                                                                                    const EdgeInsets
                                                                                        .only(
                                                                                        right: 16),
                                                                                decoration:
                                                                                    BoxDecoration(
                                                                                  color: BlindChickenColors
                                                                                      .activeBorderTextField,
                                                                                  borderRadius:
                                                                                      BorderRadius
                                                                                          .circular(
                                                                                              4),
                                                                                ),
                                                                                alignment: Alignment
                                                                                    .center,
                                                                                child: Text(
                                                                                  'Удалить',
                                                                                  style: Theme.of(
                                                                                          context)
                                                                                      .textTheme
                                                                                      .displayMedium
                                                                                      ?.copyWith(
                                                                                        color: BlindChickenColors
                                                                                            .backgroundColor,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        )
                                                                      ]),
                                                                ),
                                                              ],
                                                            );
                                                          });
                                                    },
                                                    child: Text(
                                                      'Удалить аккаунт',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium
                                                          ?.copyWith(
                                                            decoration: TextDecoration.underline,
                                                            decorationColor: BlindChickenColors
                                                                .activeBorderTextField
                                                                .withOpacity(
                                                              0.4,
                                                            ),
                                                            color: BlindChickenColors
                                                                .activeBorderTextField
                                                                .withOpacity(
                                                              0.4,
                                                            ),
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
                    },
                  ),
                ),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {},
                onHorizontalDragEnd: (DragEndDetails details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    context.back();
                    setState(() {
                      _isSwipe = false;
                    });
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 50,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
          // BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
          //   return state.maybeMap(
          //     preloadDataCompleted: (initState) {
          //       return initState.isError ?? false
          //           ? Padding(
          //               padding: const EdgeInsets.only(top: 50),
          //               child: BlindChickenErrorInfo(
          //                 errorMessage: initState.errorMessage ?? '',
          //                 onRepeatRequest: () {
          //                   context.read<AccountBloc>().add(
          //                         const AccountEvent.preloadData(),
          //                       );
          //                 },
          //               ),
          //             )
          //           : const SizedBox();
          //     },
          //     orElse: () => const SizedBox(),
          //   );
          // }),
        ],
      ),
    );
  }
}
