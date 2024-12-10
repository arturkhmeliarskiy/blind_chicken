import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class PaymentInInstalmentWidget extends StatelessWidget {
  const PaymentInInstalmentWidget({super.key, required this.price});

  final num price;

  @override
  Widget build(BuildContext context) {
    if (price >= 1000 && price <= 150000) {
      return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return BlindChickenPayInstallmentsSberbank(
                onBack: () {
                  context.maybePop();
                },
              );
            },
          );
        },
        child: Container(
          height: 26,
          margin: EdgeInsets.only(
            top: 7,
            bottom: 7,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: BlindChickenColors.backgroundColorItemFilter,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 7,
              ),
              SvgPicture.asset(
                'assets/icons/pchsbch.svg',
                height: 14,
                width: 14,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Доступна оплата частями',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                width: 7,
              ),
              SvgPicture.asset(
                'assets/icons/info.svg',
                height: 14,
                width: 14,
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      );
    }
    return SizedBox.shrink();
  }
}
