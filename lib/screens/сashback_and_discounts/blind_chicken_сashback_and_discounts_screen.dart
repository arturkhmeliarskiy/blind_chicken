import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_cashback_and_discounts_title.dart';
import 'package:blind_chicken/screens/%D1%81ashback_and_discounts/widgets/blind_chicken_discount_scale_static.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

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
            style: Theme.of(context).textTheme.titleSmall,
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
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: '27%',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: ', скидки до '
                      'Получите кэшбэк до ',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: '15%',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: ' и бесплатную доставку по всей России!',
                  style: Theme.of(context).textTheme.displayMedium,
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
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 7.0,
          ),
          Text(
            'За каждую покупку на бонусный счет зачисляется '
            'кэшбэк в размере 5% (акционные товары) или 7%.\n'
            'Кэшбэк можно использовать через 14 дней после '
            'зачисления в течение 365 дней.',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'Подарочные бонусы',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 7.0,
          ),
          RichText(
            text: TextSpan(
              text: 'За каждую покупку от ',
              style: Theme.of(context).textTheme.displayMedium,
              children: <TextSpan>[
                TextSpan(
                  text: '10 000',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: ' ₽ ',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: 'получайте \n'
                      'дополнительный кэшбэк в размере ',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                TextSpan(
                  text: '10% . Подарочный кэшбэк можно использовать через 14 '
                      'дней после зачисления в течение 30 дней.',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            'Годовые бонусы',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 7.0,
          ),
          Text(
            'При сумме покупок с 1 января по 31 декабря текущего года '
            'более 300 000 ₽ на бонусный счет начисляется '
            'дополнительный кэшбэк.',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const BlindChickenDiscountScaleStatic(
            listDiscount: [
              '15 000',
              '35000',
              '100000',
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
          Text(
            'Кэшбэк начисляется в рамках каждого 1 000 000 ₽ из суммы '
            'покупок за текущий год.'
            'Годовые бонусы можно использовать в течение 365 дней после зачисления.',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'Годовые бонусы можно использовать в течение '
            '365 дней после зачисления.',
            style: Theme.of(context).textTheme.displayMedium,
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
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const BlindChickenDiscountScaleStatic(
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
            style: Theme.of(context).textTheme.displayMedium,
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
          Text(
            'Доставка заказов суммой более 10 000 ₽ - бесплатно по всей России!',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'Сумма заказа определяется фактической '
            'оплатой денежными средствами.',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
