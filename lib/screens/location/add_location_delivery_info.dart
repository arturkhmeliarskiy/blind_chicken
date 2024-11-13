import 'package:blind_chicken/screens/location/location_delivery_info.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class AddLocationDeliveryInfo extends StatefulWidget {
  const AddLocationDeliveryInfo({
    super.key,
    required this.sum,
    required this.listAddress,
    required this.deleteAddressDelivery,
    required this.onAddressDelivery,
    required this.selectIndexAddres,
    required this.deleteIndexAddress,
    required this.isLoadDeleteAddress,
    required this.onSelectAddressDelivery,
  });

  final int sum;
  final List<DeliveryAddressDataModel> listAddress;
  final ValueChanged<String> deleteAddressDelivery;
  final int selectIndexAddres;
  final int deleteIndexAddress;
  final bool isLoadDeleteAddress;
  final Function(int, String, BasketAddressDataModel) onAddressDelivery;
  final ValueChanged<int> onSelectAddressDelivery;

  @override
  State<AddLocationDeliveryInfo> createState() => _AddLocationDeliveryInfoState();
}

class _AddLocationDeliveryInfoState extends State<AddLocationDeliveryInfo> {
  BasketAddressDataModel city = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel street = BasketAddressDataModel(address: '', zip: '');
  BasketAddressDataModel house = BasketAddressDataModel(address: '', zip: '');
  String flat = '';
  String cityIdInfo = '';
  int priceInfo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 0,
            maxHeight: 174,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.listAddress.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  onTap: () {
                    widget.onSelectAddressDelivery(index);
                  },
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          widget.selectIndexAddres == index
                              ? Icons.radio_button_on
                              : Icons.radio_button_off,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            widget.listAddress[index].addr,
                            style: Theme.of(context).textTheme.displayMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        widget.deleteIndexAddress == index && widget.isLoadDeleteAddress
                            ? SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ))
                            : GestureDetector(
                                onTap: () {
                                  widget.deleteAddressDelivery(widget.listAddress[index].id);
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 22,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 4,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              city = BasketAddressDataModel(address: '', zip: '');
              street = BasketAddressDataModel(address: '', zip: '');
              house = BasketAddressDataModel(address: '', zip: '');
              flat = '';
              cityIdInfo = '';
              priceInfo = 0;
            });
            showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(builder: (context, setStateInfo) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(5),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Введите адрес',
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              LocationDeliveryInfo(
                                onCity: (value) {
                                  final item = value;
                                  setStateInfo(() {
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
                                  });
                                },
                                onStreet: (value) {
                                  final item = value;
                                  setStateInfo(() {
                                    if (item != null) {
                                      street = BasketAddressDataModel(
                                        address: '${item.typeShort}. ${item.name}',
                                        zip: item.zip.toString(),
                                      );
                                    } else {
                                      street = BasketAddressDataModel(
                                        address: '',
                                        zip: '',
                                      );
                                    }
                                  });
                                },
                                onHouse: (value) {
                                  final item = value;
                                  setStateInfo(() {
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
                                  });
                                },
                                onFlat: (value) {
                                  setStateInfo(() {
                                    flat = value;
                                  });
                                },
                                sum: widget.sum,
                                city: city.address,
                                street: street.address,
                                house: house.address,
                                flat: flat,
                                onDeliveryInfo: (price, cityId) {
                                  setStateInfo(() {
                                    priceInfo = price;
                                    cityIdInfo = cityId;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 32,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: BlindChickenColors.activeBorderTextField,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Отмена',
                                        style: Theme.of(context).textTheme.displayMedium,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (city.address.isNotEmpty &&
                                          street.address.isNotEmpty &&
                                          house.address.isNotEmpty) {
                                        widget.onAddressDelivery(
                                          priceInfo,
                                          cityIdInfo,
                                          _address(city, street, house, flat),
                                        );
                                        Navigator.pop(context);
                                      }
                                    },
                                    child: Container(
                                      height: 32,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: city.address.isNotEmpty &&
                                                street.address.isNotEmpty &&
                                                house.address.isNotEmpty
                                            ? BlindChickenColors.activeBorderTextField
                                            : BlindChickenColors.weekdayColorCalendar,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Добавить',
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                              color: BlindChickenColors.backgroundColor,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
              },
            );
          },
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  left: 7,
                  right: 10.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Добавить адрес',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
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
    city: _city,
    street: _street,
    house: _house,
    flat: _flat,
  );
}
