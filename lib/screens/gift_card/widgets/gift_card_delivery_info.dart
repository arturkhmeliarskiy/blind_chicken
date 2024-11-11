import 'package:blind_chicken/screens/location/location_delivery_info.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class GiftCardDeliveryInfo extends StatefulWidget {
  const GiftCardDeliveryInfo({
    super.key,
    required this.sum,
    required this.onAddressDelivery,
  });

  final ValueChanged<BasketAddressDataModel> onAddressDelivery;
  final int sum;

  @override
  State<GiftCardDeliveryInfo> createState() => _GiftCardDeliveryInfoState();
}

class _GiftCardDeliveryInfoState extends State<GiftCardDeliveryInfo> {
  int _deliveryPrice = 0;
  int _total = 0;
  BasketAddressDataModel city = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel street = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel house = BasketAddressDataModel(address: '', zip: '');
  String flat = '';

  @override
  void initState() {
    _total = widget.sum;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GiftCardDeliveryInfo oldWidget) {
    _total = widget.sum;

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LocationDeliveryInfo(
            sum: widget.sum,
            city: city.address,
            street: street.address,
            house: house.address,
            flat: flat,
            onDeliveryInfo: (price, cityId) {
              setState(() {
                _deliveryPrice = price;
              });
            },
            onCity: (value) {
              final item = value;
              if (item != null) {
                city = BasketAddressDataModel(
                  address: item.name,
                  zip: item.zip.toString(),
                  cityId: item.id,
                );
              } else {
                city = BasketAddressDataModel(
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
                street = BasketAddressDataModel(
                  address: '${item.typeShort}. ${item.name}',
                  zip: item.zip.toString(),
                );
                widget.onAddressDelivery(_address(city, street, house, flat));
              } else {
                street = BasketAddressDataModel(
                  address: '',
                  zip: '',
                );
              }
              widget.onAddressDelivery(_address(city, street, house, flat));
            },
            onHouse: (value) {
              final item = value;
              if (item != null) {
                house = BasketAddressDataModel(
                  address: item.name,
                  zip: item.zip.toString(),
                );
              } else {
                house = BasketAddressDataModel(
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
          ),
          if (city.address.isNotEmpty)
            Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 56,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Доставка',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Text(
                            '$_deliveryPrice ₽',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Итого',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            '${_total + _deliveryPrice} ₽',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}

BasketAddressDataModel _address(
  BasketAddressDataModel city,
  BasketAddressDataModel street,
  BasketAddressDataModel house,
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
  return BasketAddressDataModel(
    address: _address,
    zip: zip,
    cityId: city.cityId,
  );
}
