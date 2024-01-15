import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_card_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_edit_delivery_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftPlasticCardInfo extends StatefulWidget {
  const GiftPlasticCardInfo({
    super.key,
    required this.onReceivingType,
    required this.onAddress,
    required this.onTypePay,
  });

  final ValueChanged<String> onTypePay;
  final ValueChanged<String> onReceivingType;
  final Function(String, String) onAddress;

  @override
  State<GiftPlasticCardInfo> createState() => _GiftPlasticCardInfoState();
}

class _GiftPlasticCardInfoState extends State<GiftPlasticCardInfo> {
  TextEditingController _sum = TextEditingController();
  String _selectedItem = 'Банковской картой';
  String _receivingType = 'Самовывоз';
  final listMapPoints = MapPointsInfo.getMapPointDataModels();
  late MapPointDataModel _mapPoint;

  @override
  void initState() {
    _mapPoint = listMapPoints[0];

    _sum = TextEditingController(text: '50000');
    super.initState();
  }

  @override
  void dispose() {
    _sum.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            bottom: 7,
          ),
          child: Text(
            'Сумма',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        SizedBox(
          height: 37,
          child: TextField(
            onTap: () {},
            onChanged: (value) {
              setState(() {});
            },
            controller: _sum,
            cursorColor: BlindChickenColors.activeBorderTextField,
            style: Theme.of(context).textTheme.displayMedium,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: BlindChickenColors.borderTextField,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: BlindChickenColors.borderTextField,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: BlindChickenColors.activeBorderTextField,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              contentPadding: const EdgeInsets.only(
                left: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            bottom: 7,
          ),
          child: Text(
            'Оплата',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedItem = 'Банковской картой';
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 17.5,
                    width: 17.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: BlindChickenColors.borderSwitchCard,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: _selectedItem == 'Банковской картой'
                        ? Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: BlindChickenColors.activeBorderTextField,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: BlindChickenColors.activeBorderTextField,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Банковской картой',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 21,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedItem = 'При получении';
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 17.5,
                    width: 17.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: BlindChickenColors.borderSwitchCard,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: _selectedItem == 'При получении'
                        ? Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: BlindChickenColors.activeBorderTextField,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: BlindChickenColors.activeBorderTextField,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'При получении',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            bottom: 7,
          ),
          child: Text(
            'Получение',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        GiftPlasticCardSwitchDeliveryType(
          isSwitch: true,
          navigateToMap: () {
            setState(() {
              _receivingType = 'Доставка';
            });
            if (_selectedItem != 'При получении') {
              context.navigateTo(
                GiftYandexMapRoute(
                  onMapPoint: (value) {
                    setState(() {
                      _mapPoint = value;
                    });
                  },
                  point: _mapPoint,
                ),
              );
            }
          },
          navigateToBoutiques: () {
            setState(() {
              _receivingType = 'Самовывоз';
            });
          },
        ),
        const SizedBox(
          height: 12,
        ),
        if (_selectedItem != 'При получении' || _receivingType != 'Доставка')
          GiftPlasticCardEditDeliveryInfo(
            mapPoint: _mapPoint,
            onEditAddress: () {
              context.navigateTo(
                GiftYandexMapRoute(
                  onMapPoint: (value) {
                    setState(() {
                      _mapPoint = value;
                    });
                  },
                  point: _mapPoint,
                ),
              );
            },
          )
        else
          GiftCardDeliveryInfo(
            onCity: (value) {},
            onStreet: (value) {},
            onHouse: (value) {},
          )
      ],
    );
  }
}
