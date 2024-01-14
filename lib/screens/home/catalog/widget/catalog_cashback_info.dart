import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCashbackInfo extends StatefulWidget {
  const CatalogCashbackInfo({super.key});

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
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '5 185',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'до 3 050',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                      'Ваша скидка',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Expanded(
                      child: Text(
                        ellipsis(),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              height: 1.8,
                              color: BlindChickenColors.dotItem,
                            ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '1 525',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
          Container(
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
          )
        ],
      ),
    );
  }
}
