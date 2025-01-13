import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class OrderGiftCard extends StatefulWidget {
  const OrderGiftCard({
    super.key,
    required this.onSelectCard,
    required this.giftCard,
  });

  final OrderGiftCardDataModel giftCard;
  final VoidCallback onSelectCard;

  @override
  State<OrderGiftCard> createState() => _OrderGiftCardState();
}

class _OrderGiftCardState extends State<OrderGiftCard> {
  Color giftColor = BlindChickenGiftCardColors.listColors.first.color;

  @override
  void initState() {
    giftColor = BlindChickenGiftCardColors.listColors
        .where(
          (element) => element.title == widget.giftCard.name,
        )
        .first
        .color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelectCard,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
          right: 10.5,
        ),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      color: BlindChickenColors.borderBottomColor,
                      height: 120,
                      width: 90,
                      child: Column(children: [
                        Container(
                          height: 60,
                          color: giftColor,
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            padding: const EdgeInsets.all(2),
                            height: 28,
                            width: 28,
                            child: SvgPicture.asset(
                              'assets/icons/logo_gift_card.svg',
                            ),
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text('${widget.giftCard.sum.toString().spaceSeparateNumbers()} ₽',
                        style: Theme.of(context).textTheme.displayMedium)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Подарочная карта',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.giftCard.type,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.giftCard.name,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              color: BlindChickenColors.borderBottomColor,
            )
          ],
        ),
      ),
    );
  }
}
