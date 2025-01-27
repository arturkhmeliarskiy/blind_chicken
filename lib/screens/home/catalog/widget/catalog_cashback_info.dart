import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info_modal.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogCashbackInfo extends StatefulWidget {
  const CatalogCashbackInfo({
    super.key,
    required this.cashback,
    required this.bonusYear,
    required this.discountVal,
    required this.bonusLoyal,
    required this.bonusGift,
    required this.userDiscount,
    required this.isAuth,
    required this.p,
    required this.pc,
    required this.userNextDiscount,
    required this.userBuyForNextDiscount,
    required this.userBuyForNextDiscountVal,
    required this.pb,
    required this.successfullyLogin,
    required this.onBack,
  });

  final int cashback;
  final int bonusLoyal;
  final int bonusGift;
  final int bonusYear;
  final int discountVal;
  final int userDiscount;
  final int userNextDiscount;
  final int userBuyForNextDiscount;
  final int userBuyForNextDiscountVal;
  final int p;
  final int pc;
  final int pb;
  final bool isAuth;
  final VoidCallback successfullyLogin;
  final ValueChanged<BuildContext> onBack;

  @override
  State<CatalogCashbackInfo> createState() => _CatalogCashbackInfoState();
}

class _CatalogCashbackInfoState extends State<CatalogCashbackInfo> {
  String ellipsis() {
    String result = '';
    for (int i = 0; i < 1000; i++) {
      result = '$result.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 14,
        top: 10.5,
        bottom: 10.5,
      ),
      decoration: BoxDecoration(
        color: BlindChickenColors.backgroundColorItemFilter,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              SizedBox(
                height: 18,
                child: Row(
                  children: [
                    Text(
                      'Кэшбэк',
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
                        text: widget.cashback.toString(),
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
              if (widget.pc < 10000)
                SizedBox(
                  height: 18,
                  child: Row(
                    children: [
                      Text(
                        'Бонусы ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'при заказе от 20 000 ₽',
                        style: Theme.of(context).textTheme.labelLarge,
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
                          text: widget.bonusGift.toString(),
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
              SizedBox(
                height: 18,
                child: Row(
                  children: [
                    Text(
                      'Подарок за год',
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
                        text: 'до ',
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.bonusYear.toString(),
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          const TextSpan(
                            text: ' ₽',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.discountVal > 0 && widget.isAuth)
                SizedBox(
                  height: 18,
                  child: Row(
                    children: [
                      Text(
                        'Ваша скидка',
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
                          text: widget.discountVal.toString(),
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
              if (!widget.isAuth && widget.pb == widget.p)
                SizedBox(
                  height: 18,
                  child: Row(
                    children: [
                      Text(
                        'Ваша скидка',
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
                      GestureDetector(
                        onTap: () {
                          context.read<LoginBloc>().add(const LoginEvent.init());
                          showDialog(
                              context: context,
                              builder: (context) {
                                return LoginPhoneScreen(
                                  successfully: widget.successfullyLogin,
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
                SizedBox(
                  height: 18,
                  child: Row(
                    children: [
                      Text(
                        'Скидка ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'после покупки от ${widget.userBuyForNextDiscount.toString().spaceSeparateNumbers()} ₽',
                        style: Theme.of(context).textTheme.labelLarge,
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
                          text: widget.userNextDiscount.toString(),
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
            ]),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CatalogCashbackInfoModal(
                    bonusLoyal: widget.bonusLoyal.toString(),
                    bonusYear: widget.bonusYear.toString(),
                    discountVal: widget.discountVal,
                    bonusGift: widget.bonusGift.toString(),
                    isAuth: widget.isAuth,
                    userNextDiscount: widget.userNextDiscount,
                    userBuyForNextDiscount: widget.userBuyForNextDiscount,
                    userBuyForNextDiscountVal: widget.userBuyForNextDiscountVal,
                    userDiscount: widget.userDiscount,
                    p: widget.p,
                    pb: widget.pb,
                    onBack: widget.onBack,
                  );
                },
              );
            },
            child: Container(
              width: 45.5,
              height: 54,
              padding: const EdgeInsets.only(
                left: 18,
                bottom: 35,
                right: 10,
              ),
              child: SvgPicture.asset(
                'assets/icons/info.svg',
                height: 17.5,
                width: 17.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
