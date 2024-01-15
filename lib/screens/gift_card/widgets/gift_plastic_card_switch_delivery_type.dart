import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftPlasticCardSwitchDeliveryType extends StatefulWidget {
  const GiftPlasticCardSwitchDeliveryType({
    super.key,
    required this.navigateToMap,
    required this.navigateToBoutiques,
    this.indexSelect = 0,
    this.height = 35,
    this.width = 300,
    this.isSwitch = false,
  });

  final VoidCallback navigateToMap;
  final VoidCallback navigateToBoutiques;
  final int indexSelect;
  final double height;
  final double width;
  final bool isSwitch;

  @override
  State<GiftPlasticCardSwitchDeliveryType> createState() =>
      _GiftPlasticCardSwitchDeliveryTypeState();
}

class _GiftPlasticCardSwitchDeliveryTypeState extends State<GiftPlasticCardSwitchDeliveryType> {
  int indexSelect = 0;

  @override
  void initState() {
    indexSelect = widget.indexSelect;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: BlindChickenColors.backgroundColorItemFilter,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  if (widget.isSwitch) {
                    indexSelect = 0;
                  }
                });
                widget.navigateToBoutiques();
              },
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.center,
                decoration: indexSelect == 0
                    ? BoxDecoration(
                        color: BlindChickenColors.backgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: BlindChickenColors.backgroundColorItemFilter.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 3), // Shadow position
                          ),
                        ],
                      )
                    : const BoxDecoration(),
                child: Text(
                  'Самовывоз',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  if (widget.isSwitch) {
                    indexSelect = 1;
                  }
                });
                widget.navigateToMap();
              },
              child: Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.center,
                decoration: indexSelect == 1
                    ? BoxDecoration(
                        color: BlindChickenColors.backgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: BlindChickenColors.backgroundColorItemFilter.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 3), // Shadow position
                          ),
                        ],
                      )
                    : const BoxDecoration(),
                child: Text(
                  'Доставка',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
