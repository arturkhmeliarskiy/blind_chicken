import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderProductCard extends StatefulWidget {
  const OrderProductCard({
    super.key,
    required this.product,
    required this.onSelectCard,
    required this.isBordrerBottom,
    required this.price,
  });

  final ProductDataModel product;
  final bool isBordrerBottom;
  final VoidCallback onSelectCard;
  final String price;

  @override
  State<OrderProductCard> createState() => _OrderProductCardState();
}

class _OrderProductCardState extends State<OrderProductCard> {
  String count = '1';
  String price = '0';

  @override
  void initState() {
    price = widget.price;
    count = widget.product.count ?? '';
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
                    CachedNetworkImage(
                      imageUrl: 'https://slepayakurica.ru/${widget.product.images[0]}',
                      height: 120,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      '$count шт',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: price.toString().spaceSeparateNumbers(),
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
                                height: 1,
                              ),
                        ),

                        // Text(
                        //   widget.product.category,
                        //   style: Theme.of(context).textTheme.displayMedium,
                        // ),
                        // const SizedBox(
                        //   height: 3,
                        // ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.product.title,
                          style: Theme.of(context).textTheme.displayMedium,
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          widget.product.size.first,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
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
