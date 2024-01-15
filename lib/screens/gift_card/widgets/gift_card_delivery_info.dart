import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftCardDeliveryInfo extends StatefulWidget {
  const GiftCardDeliveryInfo({
    super.key,
    required this.onCity,
    required this.onStreet,
    required this.onHouse,
  });

  final ValueChanged<String> onCity;
  final ValueChanged<String> onStreet;
  final ValueChanged<String> onHouse;

  @override
  State<GiftCardDeliveryInfo> createState() => _GiftCardDeliveryInfoState();
}

class _GiftCardDeliveryInfoState extends State<GiftCardDeliveryInfo> {
  final TextEditingController _city = TextEditingController();
  final TextEditingController _street = TextEditingController();
  final TextEditingController _house = TextEditingController();
  final String _deliveryPrice = '';
  final String _total = '';

  @override
  void dispose() {
    _city.dispose();
    _street.dispose();
    _house.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _city.text.isNotEmpty ? 346 : 237,
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
                  GiftCardDeliveryInfoRoute(
                    title: 'Выберите город',
                    selectItem: (value) {
                      setState(() {
                        _city.text = value;
                        widget.onCity(value);
                      });
                    },
                  ),
                );
              },
              onChanged: (value) {
                setState(() {
                  widget.onCity(value);
                });
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
                  GiftCardDeliveryInfoRoute(
                    title: 'Выберите улицу',
                    selectItem: (value) {
                      setState(() {
                        _street.text = value;
                        widget.onStreet(value);
                      });
                    },
                  ),
                );
              },
              onChanged: (value) {
                setState(() {
                  widget.onStreet(value);
                });
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
                              GiftCardDeliveryInfoRoute(
                                title: 'Выберите номер дома',
                                selectItem: (value) {
                                  setState(() {
                                    _house.text = value;
                                    widget.onHouse(value);
                                  });
                                },
                              ),
                            );
                          },
                          onChanged: (value) {
                            setState(() {
                              widget.onHouse(value);
                            });
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
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1),
                          enabled: _street.text.isNotEmpty,
                          textCapitalization: TextCapitalization.sentences,
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
          if (_city.text.isNotEmpty)
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
    );
  }
}
