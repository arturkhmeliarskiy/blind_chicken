import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_cashback_and_discounts_title.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_discount_scale.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCashbackInfoModal extends StatefulWidget {
  const CatalogCashbackInfoModal({
    super.key,
    required this.bonusYear,
    required this.discountVal,
    required this.bonusLoyal,
    required this.bonusGift,
  });

  final String bonusLoyal;
  final String bonusGift;
  final String bonusYear;
  final String discountVal;

  @override
  State<CatalogCashbackInfoModal> createState() => _CatalogCashbackInfoModalState();
}

class _CatalogCashbackInfoModalState extends State<CatalogCashbackInfoModal> {
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

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
        height: _isLoading ? 196 : 492,
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
                    context.popRoute();
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
            if (_isLoading)
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                ),
              )
            else
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
                        style: Theme.of(context).textTheme.headline2?.copyWith(
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
                              style: Theme.of(context).textTheme.headline2,
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
                              '${widget.bonusLoyal} ₽',
                              style: Theme.of(context).textTheme.headline2?.copyWith(
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
                                  style: Theme.of(context).textTheme.headline2,
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
                                  '${widget.bonusGift} ₽',
                                  style: Theme.of(context).textTheme.headline2?.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Начисляются при покупке от 10 000 ₽',
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
                                  style: Theme.of(context).textTheme.headline2,
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
                                    style: Theme.of(context).textTheme.headline2,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${widget.bonusYear} ₽',
                                        style: Theme.of(context).textTheme.headline2?.copyWith(
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
                      Text(
                        'Персональная скидка:',
                        style: Theme.of(context).textTheme.headline2?.copyWith(
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
                              'Ваша скидка',
                              style: Theme.of(context).textTheme.headline2,
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
                              '${widget.discountVal} ₽',
                              style: Theme.of(context).textTheme.headline2?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const BlindChickenDiscountScale(
                        isFirstFontWeight: true,
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
                        height: 32,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.popRoute();
                          context.navigateTo(const BlindChickenCashbackAndDiscountsRoute());
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Информация о кэшбэк и скидках',
                            style: Theme.of(context).textTheme.headline2?.copyWith(
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
