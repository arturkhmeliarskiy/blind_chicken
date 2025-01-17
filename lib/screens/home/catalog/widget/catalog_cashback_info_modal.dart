import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_cashback_and_discounts_title.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_discount_scale.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogCashbackInfoModal extends StatefulWidget {
  const CatalogCashbackInfoModal({
    super.key,
    required this.bonusYear,
    required this.discountVal,
    required this.bonusLoyal,
    required this.bonusGift,
    required this.isAuth,
    required this.userNextDiscount,
    required this.userBuyForNextDiscount,
    required this.userBuyForNextDiscountVal,
    required this.userDiscount,
    required this.p,
    required this.pb,
    required this.onBack,
  });

  final String bonusLoyal;
  final String bonusGift;
  final String bonusYear;
  final ValueChanged<BuildContext> onBack;
  final int userNextDiscount;
  final int userBuyForNextDiscount;
  final int userBuyForNextDiscountVal;
  final int discountVal;
  final int userDiscount;
  final bool isAuth;
  final int p;
  final int pb;

  @override
  State<CatalogCashbackInfoModal> createState() => _CatalogCashbackInfoModalState();
}

class _CatalogCashbackInfoModalState extends State<CatalogCashbackInfoModal> {
  String ellipsis() {
    String result = '';
    for (int i = 0; i < 1000; i++) {
      result = '$result.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: widget.isAuth
            ? 492
            : widget.pb > widget.p
                ? 350
                : 400,
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 28,
                    top: 28,
                  ),
                  child: BlindChickenCashbackAndDiscountsTitle(
                    title: 'Покупайте выгодно',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.maybePop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.5),
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                    ),
                  ),
                )
              ],
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Кэшбэк на бонусный счет:',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      height: 18,
                      child: Row(
                        children: [
                          Text(
                            'Бонусы',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Expanded(
                            child: Text(
                              ellipsis(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    height: 1.8,
                                    color: BlindChickenColors.dotItem,
                                  ),
                            ),
                          ),
                          Text(
                            '${widget.bonusLoyal.spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                          child: Row(
                            children: [
                              Text(
                                'Подарочные бонусы',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                              Expanded(
                                child: Text(
                                  ellipsis(),
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        height: 1.8,
                                        color: BlindChickenColors.dotItem,
                                      ),
                                ),
                              ),
                              Text(
                                '${widget.bonusGift.spaceSeparateNumbers()} ₽',
                                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Начисляются при покупке от 20 000 ₽',
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                          child: Row(
                            children: [
                              Text(
                                'Годовые бонусы',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                              Expanded(
                                child: Text(
                                  ellipsis(),
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        height: 1.8,
                                        color: BlindChickenColors.dotItem,
                                      ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'до ',
                                  style: Theme.of(context).textTheme.headlineLarge,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${widget.bonusYear.spaceSeparateNumbers()} ₽',
                                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Дарим по итогам покупок за год',
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    if (widget.pb == widget.p)
                      Text(
                        'Персональная скидка:',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    const SizedBox(
                      height: 14,
                    ),
                    if (widget.discountVal > 0 && widget.isAuth)
                      SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            Text(
                              'Ваша скидка',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Expanded(
                              child: Text(
                                ellipsis(),
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      height: 1.8,
                                      color: BlindChickenColors.dotItem,
                                    ),
                              ),
                            ),
                            Text(
                              '${widget.discountVal.toString().spaceSeparateNumbers()} ₽',
                              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    if (!widget.isAuth && widget.pb == widget.p)
                      SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            Text(
                              'Ваша скидка',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Expanded(
                              child: Text(
                                ellipsis(),
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      height: 1.8,
                                      color: BlindChickenColors.dotItem,
                                    ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<LoginBloc>().add(const LoginEvent.init());
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return LoginPhoneScreen(
                                        successfully: () {
                                          Navigator.of(context, rootNavigator: true).pop();
                                          context
                                              .read<AccountBloc>()
                                              .add(const AccountEvent.preloadData());
                                          context.navigateTo(
                                            const LoginRoute(
                                              children: [
                                                AccountRoute(),
                                              ],
                                            ),
                                          );
                                        },
                                        onBack: () {
                                          context.maybePop();
                                        },
                                      );
                                    });
                              },
                              child: Text(
                                'авторизоваться',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                    if (widget.discountVal == 0 && widget.isAuth)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                            child: Row(
                              children: [
                                Text(
                                  'Скидка ',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Expanded(
                                  child: Text(
                                    ellipsis(),
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          height: 1.8,
                                          color: BlindChickenColors.dotItem,
                                        ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: widget.userNextDiscount.toString().spaceSeparateNumbers(),
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: ' ₽',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'после покупки от ${widget.userBuyForNextDiscount.toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    if (widget.isAuth)
                      Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
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
                            userDiscount: widget.userDiscount,
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (widget.isAuth)
                      Container(
                        color: BlindChickenColors.borderBottomColor,
                        padding: const EdgeInsets.all(2),
                        child: RichText(
                          text: TextSpan(
                            text: widget.userBuyForNextDiscount.toString().spaceSeparateNumbers(),
                            style: Theme.of(context).textTheme.displaySmall,
                            children: <TextSpan>[
                              TextSpan(
                                text: ' ₽ ',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              TextSpan(
                                text: 'до скидки ${widget.userBuyForNextDiscountVal} %',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.maybePop();
                        context.navigateTo(BlindChickenCashbackAndDiscountsRoute(
                          onBack: widget.onBack,
                        ));
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Информация о кэшбэк и скидках',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      )
    ]);
  }
}
