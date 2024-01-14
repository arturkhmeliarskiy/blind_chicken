import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCartPaymentBonuses extends StatefulWidget {
  const ShoppingCartPaymentBonuses({super.key});

  @override
  State<ShoppingCartPaymentBonuses> createState() => _ShoppingCartPaymentBonusesState();
}

class _ShoppingCartPaymentBonusesState extends State<ShoppingCartPaymentBonuses> {
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
        height: 196,
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
                    'Оплата бонусами',
                    style: Theme.of(context).textTheme.subtitle2,
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
              Padding(
                padding: const EdgeInsets.all(28),
                child: Text(
                  'На бонусном счете нет активных бонусов.',
                  style: Theme.of(context).textTheme.headline2,
                ),
              )
          ],
        ),
      )
    ]);
  }
}
