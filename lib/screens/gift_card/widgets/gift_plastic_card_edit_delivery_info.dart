import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class GiftPlasticCardEditDeliveryInfo extends StatefulWidget {
  const GiftPlasticCardEditDeliveryInfo({
    super.key,
    required this.mapPoint,
    required this.onEditAddress,
  });

  final BoutiqueDataModel mapPoint;
  final VoidCallback onEditAddress;

  @override
  State<GiftPlasticCardEditDeliveryInfo> createState() => _GiftPlasticCardEditDeliveryInfoState();
}

class _GiftPlasticCardEditDeliveryInfoState extends State<GiftPlasticCardEditDeliveryInfo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onEditAddress();
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          border: Border.all(
            color: BlindChickenColors.borderBottomColor,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                  left: 17.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.mapPoint.name,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      widget.mapPoint.schedule,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/pencil.svg'),
            )
          ],
        ),
      ),
    );
  }
}
