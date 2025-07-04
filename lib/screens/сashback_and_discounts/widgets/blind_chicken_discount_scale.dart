import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenDiscountScale extends StatelessWidget {
  const BlindChickenDiscountScale({
    super.key,
    required this.listDiscount,
    required this.typeValue,
    required this.firstSymbol,
    required this.listPrice,
    this.indexCurrency = -1,
    this.isFirstFontWeight = false,
    required this.userDiscount,
  });

  final List<String> listDiscount;
  final List<String> listPrice;
  final String typeValue;
  final String firstSymbol;
  final int indexCurrency;
  final int userDiscount;
  final bool isFirstFontWeight;

  @override
  Widget build(BuildContext context) {
    if (listDiscount.length > 1) {
      return Column(
        children: [
          Row(
            children: List.generate(
              listDiscount.length,
              (index) {
                return Container(
                  width: index != listDiscount.length
                      ? MediaQuery.of(context).size.width * 0.20
                      : listDiscount[index].length * 16,
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: TextSpan(
                      text: firstSymbol,
                      style: Theme.of(context).textTheme.displayMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: listDiscount[index],
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: isFirstFontWeight && index == 0
                                    ? FontWeight.w700
                                    : FontWeight.w400,
                              ),
                        ),
                        TextSpan(
                          text: ' $typeValue',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: isFirstFontWeight && index == 0
                                    ? FontWeight.w700
                                    : FontWeight.w400,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: List.generate(
              listDiscount.length - 1,
              (index) {
                return Row(
                  children: [
                    Container(
                      width: 5,
                      height: 4,
                      color: userDiscount >= int.parse(listDiscount[index].replaceAll(' ', ''))
                          ? BlindChickenColors.activeBorderTextField
                          : BlindChickenColors.borderInput,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20 - 5,
                      height: 4,
                      color: userDiscount >= int.parse(listDiscount[index + 1])
                          ? BlindChickenColors.activeBorderTextField
                          : BlindChickenColors.backgroundColorItemFilter,
                    ),
                    if (index == listDiscount.length - 2)
                      Container(
                        width: 5,
                        height: 4,
                        color: userDiscount >= int.parse(listDiscount[index + 1])
                            ? BlindChickenColors.activeBorderTextField
                            : BlindChickenColors.borderInput,
                      ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: List.generate(
              listPrice.length,
              (index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: TextSpan(
                      text: listPrice[index],
                      style: Theme.of(context).textTheme.labelLarge,
                      children: <TextSpan>[
                        TextSpan(
                          text: indexCurrency == index ? '' : ' ₽',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else {
      return Container(
        height: 20,
        alignment: Alignment.bottomLeft,
        child: RichText(
          text: TextSpan(
            text: listDiscount.first,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            children: <TextSpan>[
              TextSpan(
                text: ' %',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
