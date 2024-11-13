import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingMapPointInfo extends StatelessWidget {
  const ShoppingMapPointInfo({
    super.key,
    required this.boutique,
    required this.onMoreDetailed,
  });

  final BoutiqueDataModel boutique;
  final VoidCallback onMoreDetailed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.maybePop();
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/icons/x.svg',
                            ),
                          ),
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                boutique.name,
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                boutique.address,
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                boutique.schedule,
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onMoreDetailed,
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only(
                            top: 14,
                            left: 16,
                            right: 16,
                          ),
                          decoration: BoxDecoration(
                            color: BlindChickenColors.activeBorderTextField,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Выбрать',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      color: BlindChickenColors.backgroundColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
