import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartEditDeliveryInfo extends StatefulWidget {
  const ShoppingCartEditDeliveryInfo({
    super.key,
    required this.boutique,
    required this.onEditAddress,
  });

  final BoutiqueDataModel boutique;
  final VoidCallback onEditAddress;

  @override
  State<ShoppingCartEditDeliveryInfo> createState() => _ShoppingCartEditDeliveryInfoState();
}

class _ShoppingCartEditDeliveryInfoState extends State<ShoppingCartEditDeliveryInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: BlindChickenColors.borderBottomColor,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.only(bottom: 15),
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
                    widget.boutique.name,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    widget.boutique.schedule,
                    style: Theme.of(context).textTheme.bodyMedium,
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
