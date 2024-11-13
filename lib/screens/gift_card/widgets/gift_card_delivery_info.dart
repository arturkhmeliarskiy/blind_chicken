import 'package:blind_chicken/screens/location/add_location_delivery_info.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class GiftCardDeliveryInfo extends StatefulWidget {
  const GiftCardDeliveryInfo({
    super.key,
    required this.sum,
    required this.delivery,
    required this.selectIndexAddres,
    required this.deleteIndexAddress,
    required this.listAddress,
    required this.isLoadDeleteAddress,
    required this.onAddressDelivery,
    required this.onSelectAddressDelivery,
    required this.deleteAddressDelivery,
  });

  final int sum;
  final int delivery;
  final int selectIndexAddres;
  final int deleteIndexAddress;
  final List<DeliveryAddressDataModel> listAddress;
  final bool isLoadDeleteAddress;
  final Function(int, String, BasketAddressDataModel) onAddressDelivery;
  final ValueChanged<int> onSelectAddressDelivery;
  final ValueChanged<String> deleteAddressDelivery;

  @override
  State<GiftCardDeliveryInfo> createState() => _GiftCardDeliveryInfoState();
}

class _GiftCardDeliveryInfoState extends State<GiftCardDeliveryInfo> {
  BasketAddressDataModel city = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel street = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel house = BasketAddressDataModel(address: '', zip: '');
  String flat = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddLocationDeliveryInfo(
            sum: widget.sum,
            selectIndexAddres: widget.selectIndexAddres,
            deleteIndexAddress: widget.deleteIndexAddress,
            listAddress: widget.listAddress,
            isLoadDeleteAddress: widget.isLoadDeleteAddress,
            onAddressDelivery: widget.onAddressDelivery,
            onSelectAddressDelivery: widget.onSelectAddressDelivery,
            deleteAddressDelivery: widget.deleteAddressDelivery,
          ),
          if (widget.listAddress.isNotEmpty)
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
                            '${widget.delivery} ₽',
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
                            '${widget.sum + widget.delivery} ₽',
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
