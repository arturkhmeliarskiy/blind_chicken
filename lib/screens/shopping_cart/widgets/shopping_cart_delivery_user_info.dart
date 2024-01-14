import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_delivery_info.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_edit_delivery_info.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class ShoppingCartDeliveryUserInfo extends StatefulWidget {
  const ShoppingCartDeliveryUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle2,
    required this.subTitle3,
    required this.isAuth,
    required this.onReceivingType,
    required this.onAddress,
  });

  final String title;
  final String subTitle;
  final String subTitle2;
  final String subTitle3;
  final bool isAuth;
  final ValueChanged<String> onReceivingType;
  final Function(String, String) onAddress;

  @override
  State<ShoppingCartDeliveryUserInfo> createState() => _ShoppingCartDeliveryUserInfoState();
}

class _ShoppingCartDeliveryUserInfoState extends State<ShoppingCartDeliveryUserInfo> {
  late MapPointDataModel _mapPoint;
  final listMapPoints = MapPointsInfo.getMapPointDataModels();
  String _receivingType = 'Самовывоз';
  String _city = '';
  String _street = '';
  String _house = '';
  String _flat = '';

  @override
  void initState() {
    _mapPoint = listMapPoints[0];
    super.initState();
  }

  String _address(
    String city,
    String street,
    String house,
    String flat,
  ) {
    String result = '';
    if (city.isNotEmpty && street.isNotEmpty) {
      city = '$city, ';
    } else {
      city = '$city ';
    }
    if (street.isNotEmpty && house.isNotEmpty) {
      street = '$street, ';
    } else {
      street = '$street ';
    }
    if (house.isNotEmpty && flat.isNotEmpty) {
      house = '$house, ';
    } else {
      house = '$house ';
    }
    if (flat.isNotEmpty) {
      flat = flat;
    }
    result = city + street + house + flat;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 14,
          ),
          if (!widget.isAuth)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: GiftPlasticCardSwitchDeliveryType(
                    isSwitch: true,
                    navigateToMap: () {
                      setState(() {
                        _receivingType = 'Доставка';
                        widget.onReceivingType(_receivingType);
                        widget.onAddress('', '');
                      });
                    },
                    navigateToBoutiques: () {
                      setState(() {
                        _receivingType = 'Самовывоз';
                        widget.onReceivingType(_receivingType);
                        widget.onAddress('', '');
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                if (_receivingType != 'Доставка')
                  ShoppingCartEditDeliveryInfo(
                    mapPoint: _mapPoint,
                    onEditAddress: () {
                      context.navigateTo(
                        ShoppingYandexMapRoute(
                          onMapPoint: (value) {
                            setState(() {
                              _mapPoint = value;
                              widget.onAddress(_mapPoint.name, _mapPoint.schedule);
                            });
                          },
                          point: _mapPoint,
                        ),
                      );
                    },
                  )
                else
                  ShoppingCartDeliveryInfo(
                    onCity: (value) {
                      _city = value;
                      widget.onAddress(
                        _address(_city, _street, _house, _flat),
                        'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00',
                      );
                    },
                    onStreet: (value) {
                      _street = value;
                      widget.onAddress(
                        _address(_city, _street, _house, _flat),
                        'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00',
                      );
                    },
                    onHouse: (value) {
                      _house = value;
                      widget.onAddress(
                        _address(_city, _street, _house, _flat),
                        'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00',
                      );
                    },
                    onFlat: (value) {
                      _flat = value;
                      widget.onAddress(
                        _address(_city, _street, _house, _flat),
                        'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00',
                      );
                    },
                  )
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.subTitle,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                    Expanded(
                      child: Text(
                        widget.subTitle2,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.subTitle3,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
