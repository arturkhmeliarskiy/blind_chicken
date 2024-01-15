import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartPaymentGiftCard extends StatefulWidget {
  const ShoppingCartPaymentGiftCard({super.key});

  @override
  State<ShoppingCartPaymentGiftCard> createState() => _ShoppingCartPaymentGiftCardState();
}

class _ShoppingCartPaymentGiftCardState extends State<ShoppingCartPaymentGiftCard> {
  final TextEditingController _numberCard = TextEditingController();
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: _isLoading ? 196 : 326,
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    top: 28,
                  ),
                  child: Text(
                    'Оплата подарочной картой',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.popRoute();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.5),
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                    ),
                  ),
                )
              ],
            ),
            if (_isLoading)
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                ),
              )
            else
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    right: 28,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Номер карты',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 3.5,
                      ),
                      Material(
                        child: SizedBox(
                          height: 37,
                          child: TextField(
                            onTap: () {},
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: _numberCard,
                            cursorColor: BlindChickenColors.activeBorderTextField,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1.4),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.borderTextField,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.activeBorderTextField,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusColor: BlindChickenColors.backgroundColor,
                              fillColor: BlindChickenColors.backgroundColor,
                              hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1),
                              prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                              contentPadding: const EdgeInsets.only(left: 12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Пин-код',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 3.5,
                      ),
                      Material(
                        child: SizedBox(
                          height: 37,
                          child: TextField(
                            onTap: () {},
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: _numberCard,
                            cursorColor: BlindChickenColors.activeBorderTextField,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1.4),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.borderTextField,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.activeBorderTextField,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusColor: BlindChickenColors.backgroundColor,
                              fillColor: BlindChickenColors.backgroundColor,
                              hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1),
                              prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                              contentPadding: const EdgeInsets.only(left: 12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Container(
                        height: 44,
                        width: 163,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Перейти к оплате',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
          ],
        ),
      )
    ]);
  }
}
