import 'package:blind_chicken/screens/home/catalog/widget/catalog_cashback_info_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCashbackInfo extends StatefulWidget {
  const CatalogCashbackInfo({
    super.key,
    required this.cashback,
    required this.bonusYear,
    required this.discountVal,
    required this.bonusLoyal,
    required this.bonusGift,
  });

  final String cashback;
  final String bonusLoyal;
  final String bonusGift;
  final String bonusYear;
  final String discountVal;

  @override
  State<CatalogCashbackInfo> createState() => _CatalogCashbackInfoState();
}

class _CatalogCashbackInfoState extends State<CatalogCashbackInfo> {
  String ellipsis() {
    String result = '';
    for (int i = 0; i < 1000; i++) {
      result = '$result.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 14,
        top: 10.5,
        bottom: 10.5,
      ),
      decoration: BoxDecoration(
        color: BlindChickenColors.backgroundColorItemFilter,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              SizedBox(
                height: 18,
                child: Row(
                  children: [
                    Text(
                      'Кэшбэк',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: widget.cashback,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' ₽',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
                child: Row(
                  children: [
                    Text(
                      'Подарок за год',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'до ',
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.bonusYear,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
                child: Row(
                  children: [
                    Text(
                      'Ваша скидка',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: widget.discountVal,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' ₽',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CatalogCashbackInfoModal(
                    bonusLoyal: widget.bonusLoyal,
                    bonusYear: widget.bonusYear,
                    discountVal: widget.discountVal,
                    bonusGift: widget.bonusGift,
                  );
                },
              );
            },
            child: Container(
              width: 45.5,
              height: 54,
              padding: const EdgeInsets.only(
                left: 18,
                bottom: 35,
                right: 10,
              ),
              child: SvgPicture.asset(
                'assets/icons/info.svg',
                height: 17.5,
                width: 17.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
