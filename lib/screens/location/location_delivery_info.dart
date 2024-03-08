import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class LocationDeliveryInfo extends StatefulWidget {
  const LocationDeliveryInfo({
    super.key,
    required this.onCity,
    required this.onStreet,
    required this.onHouse,
    required this.onFlat,
    this.isFullInfoSum = false,
    required this.sum,
    required this.city,
    required this.street,
    required this.house,
    required this.flat,
    required this.onPrice,
  });

  final ValueChanged<SearchLocationInfoDataModel?> onCity;
  final ValueChanged<SearchLocationInfoDataModel?> onStreet;
  final ValueChanged<SearchLocationInfoDataModel?> onHouse;
  final ValueChanged<int> onPrice;
  final String city;
  final String street;
  final String house;
  final String flat;
  final ValueChanged<String> onFlat;
  final bool isFullInfoSum;
  final int sum;

  @override
  State<LocationDeliveryInfo> createState() => _LocationDeliveryInfoState();
}

class _LocationDeliveryInfoState extends State<LocationDeliveryInfo> {
  final TextEditingController _city = TextEditingController();
  final TextEditingController _street = TextEditingController();
  final TextEditingController _house = TextEditingController();
  final TextEditingController _flat = TextEditingController();
  final String _deliveryPrice = '';
  final String _total = '';
  SearchLocationInfoDataModel? _selectedCity;
  SearchLocationInfoDataModel? _selectedStreet;

  @override
  void initState() {
    _city.text = widget.city;
    _street.text = widget.street;
    _house.text = widget.house;
    _flat.text = widget.flat;
    super.initState();
  }

  @override
  void dispose() {
    _city.dispose();
    _street.dispose();
    _house.dispose();
    _flat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchLocationBloc, SearchLocationState>(
      listener: (context, state) {
        state.maybeMap(
          preloadData: (initState) {
            widget.onPrice(initState.price);
          },
          orElse: () {},
        );
      },
      child: SizedBox(
        height: _city.text.isNotEmpty && widget.isFullInfoSum ? 346 : 237,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Город',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 37,
              decoration: BoxDecoration(
                border: Border.all(
                  color: BlindChickenColors.borderTextField,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      height: 1,
                    ),
                controller: _city,
                onTap: () {
                  context.navigateTo(
                    SearchLocationRoute(
                      title: 'Выберите город',
                      contentType: 'city',
                      value: _city.text,
                      selectItem: (value) {
                        final item = value;
                        if (item != null) {
                          setState(() {
                            _selectedCity = item;
                            _city.text = item.name;
                            widget.onCity(item);
                          });
                          context.read<SearchLocationBloc>().add(
                                SearchLocationEvent.selectedAddress(
                                  zipcode: item.zip.toString(),
                                  sum: widget.sum,
                                  cityId: _selectedCity?.id ?? '',
                                ),
                              );
                        } else {
                          setState(() {
                            _selectedCity = null;
                            _city.clear();
                            widget.onCity;
                          });
                        }
                      },
                    ),
                  );
                },
                onChanged: (value) {
                  setState(() {});
                },
                keyboardType: TextInputType.none,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  isDense: true,
                  filled: false,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 10.5,
                  ),
                  suffixIcon: _city.text.isNotEmpty
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _city.clear();
                              _street.clear();
                              _house.clear();
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/icons/x.svg',
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Улица',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 37,
              decoration: BoxDecoration(
                color: _city.text.isNotEmpty
                    ? BlindChickenColors.backgroundColor
                    : BlindChickenColors.backgroundColorItemFilter,
                border: Border.all(
                  color: _city.text.isNotEmpty
                      ? BlindChickenColors.borderInput
                      : BlindChickenColors.backgroundColorItemFilter,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      height: 1,
                    ),
                controller: _street,
                onTap: () {
                  context.navigateTo(
                    SearchLocationRoute(
                      title: 'Выберите улицу',
                      contentType: 'street',
                      cityId: _selectedCity?.id ?? '',
                      value: _street.text,
                      selectItem: (value) {
                        final item = value;
                        if (item != null) {
                          setState(() {
                            _selectedStreet = item;
                            _street.text = '${item.typeShort}. ${item.name}';
                            widget.onStreet(value);
                          });
                          context.read<SearchLocationBloc>().add(
                                SearchLocationEvent.selectedAddress(
                                  zipcode: item.zip.toString(),
                                  sum: widget.sum,
                                  cityId: _selectedCity?.id ?? '',
                                ),
                              );
                        } else {
                          setState(() {
                            _selectedStreet = null;
                            _street.clear();
                            widget.onStreet;
                          });
                        }
                      },
                    ),
                  );
                },
                onChanged: (value) {
                  setState(() {});
                },
                keyboardType: TextInputType.none,
                textCapitalization: TextCapitalization.sentences,
                enabled: _city.text.isNotEmpty,
                decoration: InputDecoration(
                  isDense: true,
                  filled: false,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 10.5,
                  ),
                  suffixIcon: _street.text.isNotEmpty
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _street.clear();
                              _house.clear();
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/icons/x.svg',
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Дом',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 37,
                          decoration: BoxDecoration(
                            color: _street.text.isNotEmpty
                                ? BlindChickenColors.backgroundColor
                                : BlindChickenColors.backgroundColorItemFilter,
                            border: Border.all(
                              color: _street.text.isNotEmpty
                                  ? BlindChickenColors.borderInput
                                  : BlindChickenColors.backgroundColorItemFilter,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextField(
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  height: 1,
                                ),
                            controller: _house,
                            onTap: () {
                              context.navigateTo(
                                SearchLocationRoute(
                                  title: 'Выберите номер дома',
                                  contentType: 'building',
                                  cityId: _selectedCity?.id ?? '',
                                  streetId: _selectedStreet?.id ?? '',
                                  value: _house.text,
                                  selectItem: (value) {
                                    final item = value;
                                    if (item != null) {
                                      setState(() {
                                        _house.text = item.name;
                                        widget.onHouse(item);
                                      });
                                      context.read<SearchLocationBloc>().add(
                                            SearchLocationEvent.selectedAddress(
                                              zipcode: item.zip.toString(),
                                              sum: widget.sum,
                                              cityId: _selectedCity?.id ?? '',
                                            ),
                                          );
                                    } else {
                                      setState(() {
                                        _house.clear();
                                        widget.onHouse;
                                      });
                                    }
                                  },
                                ),
                              );
                            },
                            onChanged: (value) {
                              setState(() {});
                            },
                            keyboardType: TextInputType.none,
                            textCapitalization: TextCapitalization.sentences,
                            enabled: _street.text.isNotEmpty,
                            decoration: InputDecoration(
                              isDense: true,
                              filled: false,
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 7,
                                vertical: 10.5,
                              ),
                              suffixIcon: _house.text.isNotEmpty
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _house.clear();
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/x.svg',
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Квартира',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 37,
                          decoration: BoxDecoration(
                            color: _house.text.isNotEmpty
                                ? BlindChickenColors.backgroundColor
                                : BlindChickenColors.backgroundColorItemFilter,
                            border: Border.all(
                              color: _house.text.isNotEmpty
                                  ? BlindChickenColors.borderInput
                                  : BlindChickenColors.backgroundColorItemFilter,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextField(
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1),
                            enabled: _house.text.isNotEmpty,
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: (value) {
                              setState(() {
                                widget.onFlat(value);
                              });
                            },
                            controller: _flat,
                            decoration: const InputDecoration(
                              isDense: true,
                              filled: false,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 7,
                                vertical: 10.5,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_city.text.isNotEmpty && widget.isFullInfoSum)
              Column(
                children: [
                  const SizedBox(
                    height: 53,
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
                              'Итогго',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            Text(
                              '$_total ₽',
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
      ),
    );
  }
}
