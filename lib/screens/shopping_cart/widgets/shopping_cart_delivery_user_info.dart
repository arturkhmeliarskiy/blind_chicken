import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/gift_plastic_card_switch_delivery_type.dart';
import 'package:blind_chicken/screens/location/location_delivery_info.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_edit_delivery_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

class ShoppingCartDeliveryUserInfo extends StatefulWidget {
  const ShoppingCartDeliveryUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle2,
    required this.subTitle3,
    required this.isAuth,
    required this.onReceivingType,
    required this.onAddressPickup,
    required this.sum,
    required this.boutiques,
    required this.onAddressDelivery,
  });

  final String title;
  final String subTitle;
  final String subTitle2;
  final String subTitle3;
  final bool isAuth;
  final ValueChanged<String> onReceivingType;
  final Function(BoutiqueDataModel) onAddressPickup;
  final ValueChanged<BasketAddress> onAddressDelivery;
  final BoutiquesDataModel boutiques;
  final int sum;

  @override
  State<ShoppingCartDeliveryUserInfo> createState() => _ShoppingCartDeliveryUserInfoState();
}

class _ShoppingCartDeliveryUserInfoState extends State<ShoppingCartDeliveryUserInfo> {
  String _receivingType = 'Самовывоз';
  BoutiqueDataModel? boutique;
  BasketAddress city = BasketAddress(address: '', zip: '');
  BasketAddress street = BasketAddress(address: '', zip: '');
  BasketAddress house = BasketAddress(address: '', zip: '');
  String flat = '';

  @override
  void initState() {
    boutique = widget.boutiques.data.first;
    super.initState();
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
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 14,
          ),
          if (widget.isAuth)
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
                      });
                    },
                    navigateToBoutiques: () {
                      setState(() {
                        _receivingType = 'Самовывоз';
                        widget.onReceivingType(_receivingType);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                if (_receivingType != 'Доставка')
                  ShoppingCartEditDeliveryInfo(
                    boutique: boutique ?? widget.boutiques.data.first,
                    onEditAddress: () {
                      context.navigateTo(
                        ShoppingYandexMapRoute(
                          onMapPoint: (value) {
                            setState(() {
                              boutique = value;
                              widget.onAddressPickup(value);
                            });
                          },
                          boutique: boutique ?? widget.boutiques.data.first,
                          boutiques: widget.boutiques,
                        ),
                      );
                    },
                  )
                else
                  LocationDeliveryInfo(
                    sum: widget.sum,
                    city: city.address,
                    street: street.address,
                    house: house.address,
                    flat: flat,
                    onDeliveryInfo: (price, cityId) {
                      context.read<ShoppingCartBloc>().add(
                            ShoppingCartEvent.delivery(
                              delivery: price,
                              cityId: cityId,
                            ),
                          );
                    },
                    onCity: (value) {
                      final item = value;
                      if (item != null) {
                        city = BasketAddress(
                          address: item.name,
                          zip: item.zip.toString(),
                          cityId: item.id,
                        );
                      } else {
                        city = BasketAddress(
                          address: '',
                          zip: '',
                          cityId: '',
                        );
                      }
                      widget.onAddressDelivery(_address(city, street, house, flat));
                    },
                    onStreet: (value) {
                      final item = value;
                      if (item != null) {
                        street = BasketAddress(
                          address: '${item.typeShort}. ${item.name}',
                          zip: item.zip.toString(),
                        );
                        widget.onAddressDelivery(_address(city, street, house, flat));
                      } else {
                        street = BasketAddress(
                          address: '',
                          zip: '',
                        );
                      }

                      widget.onAddressDelivery(_address(city, street, house, flat));
                    },
                    onHouse: (value) {
                      final item = value;
                      if (item != null) {
                        house = BasketAddress(
                          address: item.name,
                          zip: item.zip.toString(),
                        );
                      } else {
                        house = BasketAddress(
                          address: '',
                          zip: '',
                        );
                      }
                      widget.onAddressDelivery(_address(city, street, house, flat));
                    },
                    onFlat: (value) {
                      flat = value;
                      widget.onAddressDelivery(_address(city, street, house, flat));
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
                    GestureDetector(
                      onTap: () {
                        context.read<LoginBloc>().add(const LoginEvent.init());
                        showDialog(
                            context: context,
                            builder: (context) {
                              return LoginPhoneScreen(
                                successfully: () {
                                  Navigator.of(context, rootNavigator: true).pop();
                                  context.read<ShoppingCartBloc>().add(
                                        const ShoppingCartEvent.preloadData(),
                                      );
                                },
                                onBack: () {
                                  context.popRoute();
                                },
                              );
                            });
                      },
                      child: Text(
                        widget.subTitle,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.subTitle2,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.displayMedium,
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
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

BasketAddress _address(
  BasketAddress city,
  BasketAddress street,
  BasketAddress house,
  String flat,
) {
  String _address = '';
  String _city = '';
  String _street = '';
  String _house = '';
  String _flat = '';
  String zip = '';

  if (city.address.isNotEmpty && street.address.isNotEmpty) {
    _city = '${city.address}, ';
  } else {
    _city = '${city.address} ';
  }
  if (street.address.isNotEmpty && house.address.isNotEmpty) {
    _street = '${street.address}, ';
  } else {
    _street = '${street.address} ';
  }
  if (house.address.isNotEmpty && flat.isNotEmpty) {
    _house = '${house.address}, ';
  } else {
    _house = '${house.address} ';
  }
  if (flat.isNotEmpty) {
    _flat = flat;
  }

  if (city.address.isNotEmpty) {
    zip = city.zip.toString();
  }

  if (street.address.isNotEmpty) {
    zip = street.zip.toString();
  }

  if (house.address.isNotEmpty) {
    zip = house.zip.toString();
  }

  _address = _city + _street + _house + _flat;
  return BasketAddress(
    address: _address,
    zip: zip,
    cityId: city.cityId,
    city: _city,
    street: _street,
    house: _house,
    flat: _flat,
  );
}
