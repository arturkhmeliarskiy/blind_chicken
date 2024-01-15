import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({
    super.key,
    required this.product,
    required this.onSelectCard,
    required this.isBordrerBottom,
  });

  final ProductDataModel product;
  final bool isBordrerBottom;
  final VoidCallback onSelectCard;

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int count = 1;
  int price = 0;

  @override
  void initState() {
    price = widget.product.price;
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
                    if (widget.product.images.isNotEmpty &&
                        widget.product.title != 'Подарочная карта')
                      CachedNetworkImage(
                        imageUrl: widget.product.images[0],
                        height: 120,
                      ),
                    if (widget.product.title == 'Подарочная карта')
                      Container(
                        color: BlindChickenColors.borderBottomColor,
                        height: 120,
                        width: 90,
                        child: Column(children: [
                          Container(
                            height: 60,
                            color: widget.product.color,
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
                    if (widget.product.title == 'Подарочная карта')
                      Text(
                        '${price.toString().spaceSeparateNumbers()} ₽',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      )
                    else
                      Text(
                        '${count.toString()} шт',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.product.title == 'Подарочная карта')
                        Text(
                          'Подарочная карта',
                          style: Theme.of(context).textTheme.displayMedium,
                        )
                      else
                        RichText(
                          text: TextSpan(
                            text: '$price',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                            children: const <TextSpan>[
                              TextSpan(
                                text: ' ₽ ',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.product.brend,
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        widget.product.catrgory,
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
