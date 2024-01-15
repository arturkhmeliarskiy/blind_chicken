import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_payment_bonuses.dart';
import 'package:blind_chicken/screens/shopping_cart/widgets/shopping_cart_payment_gift_card.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartPayUserInfo extends StatefulWidget {
  const ShoppingCartPayUserInfo({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle2,
    required this.subTitle3,
    required this.isAuth,
    required this.onTypePay,
  });

  final String title;
  final String subTitle;
  final String subTitle2;
  final String subTitle3;
  final bool isAuth;
  final ValueChanged<String> onTypePay;

  @override
  State<ShoppingCartPayUserInfo> createState() => _ShoppingCartPayUserInfoState();
}

class _ShoppingCartPayUserInfoState extends State<ShoppingCartPayUserInfo> {
  String _selectedItem = 'Банковской картой';

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
          if (!widget.isAuth)
            Column(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedItem = 'Банковской картой';
                          widget.onTypePay(_selectedItem);
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: BlindChickenColors.borderSwitchCard,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: _selectedItem == 'Банковской картой'
                                ? Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                      color: BlindChickenColors.activeBorderTextField,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: BlindChickenColors.activeBorderTextField,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Банковской картой',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedItem = 'При получении';
                          widget.onTypePay(_selectedItem);
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: BlindChickenColors.borderSwitchCard,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: _selectedItem == 'При получении'
                                ? Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                      color: BlindChickenColors.activeBorderTextField,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: BlindChickenColors.activeBorderTextField,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'При получении',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    BlindChickenBorderButton(
                      title: 'Бонусы',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const ShoppingCartPaymentBonuses();
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    BlindChickenBorderButton(
                      title: 'Подарочная карта',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const ShoppingCartPaymentGiftCard();
                          },
                        );
                      },
                    ),
                  ],
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
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            decoration: TextDecoration.underline,
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
