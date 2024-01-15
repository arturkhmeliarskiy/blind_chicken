import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_blind_chicken.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_switch_card_material.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_virtual_card_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class GiftCardScreen extends StatefulWidget {
  const GiftCardScreen({super.key});

  @override
  State<GiftCardScreen> createState() => _GiftCardScreenState();
}

class _GiftCardScreenState extends State<GiftCardScreen> {
  String _selectedItem = 'Виртуальная';
  Map<dynamic, dynamic> _selectedColor = {
    'title': 'Lilac',
    'color': BlindChickenColors.lilac,
  };
  String _receivingType = 'Самовывоз';
  String _typePay = 'Банковской картой';
  String _adress = 'Москва, ТЦ Афимолл Сити, 2 этаж, Department Store';
  String _workingHours = 'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00';

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
          Padding(
            padding: const EdgeInsets.only(top: 17.5, bottom: 17.5),
            child: Text(
              'Подарочная карта',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          GiftCardBlindChicken(
            selectedColor: _selectedColor['color'],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 21,
            ),
            child: Text(
              'Вид',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          GiftCardSwitchCardMaterial(
            onChangeTypeCard: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
          ),
          if (_selectedItem == 'Виртуальная')
            GiftVirtualCardInfo(
              selectedColor: _selectedColor,
              onSelectedColor: (value) {
                setState(() {
                  _selectedColor = value;
                });
              },
            )
          else
            GiftPlasticCardInfo(
              onReceivingType: (value) {
                _receivingType = value;
              },
              onAddress: (adress, workingHours) {
                _adress = adress;
                _workingHours = workingHours;
              },
              onTypePay: (value) {
                _typePay = value;
              },
            ),
          const SizedBox(
            height: 28,
          ),
          BlindChickenButton(
            title: 'Заказать',
            onChenge: () {
              ProductDataModel product = ProductDataModel(
                id: 0,
                title: 'Подарочная карта',
                catrgory: 'Виртуальная',
                size: [],
                price: 50000,
                brend: _selectedColor['title'],
                lensDiameter: 0,
                templeLength: null,
                country: '',
                images: [],
                variants: [],
                color: _selectedColor['color'],
              );
              context.navigateTo(
                ShoppingCartAutoRouterRoute(
                  children: [
                    OrderRoute(
                      receivingType: _receivingType,
                      typePay: _typePay,
                      adress: _adress,
                      workingHours: _workingHours,
                    ),
                  ],
                ),
              );
              context.read<OrderBloc>().add(
                    OrderEvent.orderInfo(
                      products: [
                        ShoppingCartDataModel(
                          product: product,
                          count: 1,
                          price: 50000,
                        )
                      ],
                      favouritesProducts: [],
                      numberProducts: 0,
                      amountPaid: 50000,
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'О подарочной карте (официальная оферта)',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Можно отправить получателю или себе, чтобы вручить лично.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Доставка подарочных карт номиналом более ',
                    style: Theme.of(context).textTheme.displayMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: '10 000',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      TextSpan(
                        text: ' ₽',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      TextSpan(
                        text: ' бесплатно.',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Если после оплаты подарочной картой на ней '
                  'останутся средства, их можно будет использовать '
                  'при оплате следующего заказа.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Использовать подарочную карту можно в любом из '
                  'наших бутиков, предьявив его консультанту.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Подарочная карта действует в течение 1 года после покупки.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Возврат денежных средств после приобретения и '
                  'активации подарочной карты невозможен. Активация '
                  'подарочной карты происходит в момент выдачи клиенту '
                  'купленной подарочной карты.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•'),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'После активации подарочной карты покупатель '
                  'получает секретный код для использования подарочной '
                  'карты. Использование подарочной карты без предоставления '
                  'секретного кода невозможно.',
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
