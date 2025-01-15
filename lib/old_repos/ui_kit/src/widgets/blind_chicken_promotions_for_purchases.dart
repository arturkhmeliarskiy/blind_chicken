import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BlindChickenPromotionsForPurchases extends StatelessWidget {
  const BlindChickenPromotionsForPurchases({
    super.key,
    required this.onBack,
  });

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 190,
          width: width - 32,
          decoration: BoxDecoration(
            color: BlindChickenColors.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Внимания акция!',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Скидка -10% на первый заказ в приложении на одежду, обувь и сумки!',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: onBack,
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: BlindChickenColors.activeBorderTextField,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'ОК',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: BlindChickenColors.backgroundColor,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
