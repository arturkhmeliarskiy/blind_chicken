import 'package:blind_chicken/screens/gift_card/widgets/gift_virtual_card_parametrs.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftVirtualCardInfo extends StatefulWidget {
  const GiftVirtualCardInfo({
    super.key,
    required this.selectedColor,
    required this.onSelectedColor,
  });

  final Map<dynamic, dynamic> selectedColor;
  final ValueChanged<Map<dynamic, dynamic>> onSelectedColor;

  @override
  State<GiftVirtualCardInfo> createState() => _GiftVirtualCardInfoState();
}

class _GiftVirtualCardInfoState extends State<GiftVirtualCardInfo> {
  TextEditingController _sum = TextEditingController();

  @override
  void initState() {
    _sum = TextEditingController(text: '50000');
    super.initState();
  }

  @override
  void dispose() {
    _sum.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 21,
            bottom: 7,
          ),
          child: Text(
            'Цвет',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        GiftVirtualCardColors(
          selectedColor: widget.selectedColor,
          onSelectedColor: (value) {
            setState(() {
              widget.onSelectedColor(value);
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            bottom: 7,
          ),
          child: Text(
            'Сумма',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        SizedBox(
          height: 37,
          child: TextField(
            onTap: () {},
            onChanged: (value) {
              setState(() {});
            },
            controller: _sum,
            cursorColor: BlindChickenColors.activeBorderTextField,
            style: Theme.of(context).textTheme.headline2,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: BlindChickenColors.borderTextField,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
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
              contentPadding: const EdgeInsets.only(
                left: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28,
            bottom: 7,
          ),
          child: Text(
            'Оплата',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        Row(
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
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: BlindChickenColors.activeBorderTextField,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: BlindChickenColors.activeBorderTextField,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              'Банковской картой',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ],
    );
  }
}
