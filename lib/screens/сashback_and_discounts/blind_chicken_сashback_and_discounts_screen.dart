import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_cashback_and_discounts_title.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

import 'widgets/blind_chicken_discount_scale.dart';

@RoutePage()
class BlindChickenCashbackAndDiscountsScreen extends StatelessWidget {
  const BlindChickenCashbackAndDiscountsScreen({super.key});

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
            'Кэшбэк и скидки\n'
            'Покупайте мировые бренды с\n'
            'выгодой до 40%',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 14.0,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Шопинг должен быть приятным и выгодным!\n'
                      'Получите кэшбэк до ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: '27%',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: ', скидки до '
                      'Получите кэшбэк до ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: '15%',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: ' и бесплатную доставку по всей России!',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17.5,
          ),
          const BlindChickenCashbackAndDiscountsTitle(
            title: 'Кэшбэк до 27%',
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              children: BlindChickenCheckWordStyle.textToWords(
                'Оплачивайте заказы бонусами!\n'
                'После каждой покупки получайте кэшбэк на бонусный счет и '
                'оплачивайте им до 100% от стоимости товаров!',
                context,
              ),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'Бонусы лояльности',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              children: BlindChickenCheckWordStyle.textToWords(
                'За каждую покупку на бонусный счет зачисляется '
                'кэшбэк в размере 5% (акционные товары) или 7%.\n'
                'Кэшбэк можно использовать через 14 дней после '
                'зачисления в течение 365 дней.',
                context,
              ),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'Подарочные бонусы',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              text: 'За каждую покупку от ',
              style: Theme.of(context).textTheme.headline2,
              children: <TextSpan>[
                TextSpan(
                  text: '10 000',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const TextSpan(
                  text: ' ₽ ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: 'получайте \n'
                      'дополнительный кэшбэк в размере ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: '10%',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: BlindChickenCheckWordStyle.textToWords(
                '. Подарочный кэшбэк можно использовать через 14 \n'
                'дней после зачисления в течение 30 дней.',
                context,
              ),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'Годовые бонусы',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              text: 'При сумме покупок с     '
                  'текущего года более ',
              style: Theme.of(context).textTheme.headline2,
              children: <TextSpan>[
                TextSpan(
                  text: ' 1 ',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: 'января по',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: ' 31 ',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: 'декабря текущего года более',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: ' 300 000',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const TextSpan(
                  text: ' ₽ ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: 'на бонусный счет '
                      'начисляется дополнительный кэшбэк.',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BlindChickenDiscountScale(
            listDiscount: [
              '15 000',
              '35 000',
              '100 000',
            ],
            listPrice: [
              '300 000',
              '500 000',
              '1000 000',
            ],
            typeValue: '₽',
            firstSymbol: '+',
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: 'Кэшбэк начисляется в рамках каждого ',
              style: Theme.of(context).textTheme.headline2,
              children: <TextSpan>[
                TextSpan(
                  text: '1 000 000',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const TextSpan(
                  text: ' ₽ ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: 'из суммы покупок за текущий год.',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: BlindChickenCheckWordStyle.textToWords(
                'Годовые бонусы можно использовать в течение '
                '365 дней после зачисления.',
                context,
              ),
            ),
          ),
          const SizedBox(
            height: 17.5,
          ),
          const BlindChickenCashbackAndDiscountsTitle(
            title: 'Скидки до 15%',
          ),
          const SizedBox(
            height: 7.0,
          ),
          Text(
            'Покупайте по лучшей цене!\n'
            'Для постоянных покупателей действует '
            'накопительная дисконтная система.',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 10,
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
            height: 10,
          ),
          Text(
            'Данные скидки не применяются к товарам и '
            'услугам, участвующим в акциях.',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 17.5,
          ),
          const BlindChickenCashbackAndDiscountsTitle(
            title: 'Бесплатная доставка',
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              text: 'Доставка заказов суммой более ',
              style: Theme.of(context).textTheme.headline2,
              children: <TextSpan>[
                TextSpan(
                  text: '10 000',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const TextSpan(
                  text: ' ₽ ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: 'бесплатно по всей России!',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          Text(
            'Сумма заказа определяется фактической '
            'оплатой денежными средствами.',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
