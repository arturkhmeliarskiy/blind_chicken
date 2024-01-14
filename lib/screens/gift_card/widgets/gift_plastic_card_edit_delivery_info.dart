import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftPlasticCardEditDeliveryInfo extends StatefulWidget {
  const GiftPlasticCardEditDeliveryInfo({
    super.key,
    required this.mapPoint,
    required this.onEditAddress,
  });

  final MapPointDataModel mapPoint;
  final VoidCallback onEditAddress;

  @override
  State<GiftPlasticCardEditDeliveryInfo> createState() => _GiftPlasticCardEditDeliveryInfoState();
}

class _GiftPlasticCardEditDeliveryInfoState extends State<GiftPlasticCardEditDeliveryInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
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
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    widget.mapPoint.schedule,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              widget.onEditAddress();
            },
            child: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/pencil.svg'),
            ),
          )
        ],
      ),
    );
  }
}
