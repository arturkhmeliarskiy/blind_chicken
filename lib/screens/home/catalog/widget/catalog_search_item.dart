import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogSearchItem extends StatelessWidget {
  const CatalogSearchItem({
    super.key,
    required this.product,
    required this.isButton,
    required this.onTap,
    required this.onMoreInfo,
  });

  final ProductDataModel product;
  final bool isButton;
  final VoidCallback onTap;
  final VoidCallback onMoreInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 128,
            margin: const EdgeInsets.only(bottom: 7),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: product.images[0],
                  width: 96,
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.brend,
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                        maxLines: 2,
                      ),
                      Text(
                        product.category,
                        style: Theme.of(context).textTheme.displayMedium,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Text(
                            '${(product.price).toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          if (product.pb > product.price)
                            Row(
                              children: [
                                Text(
                                  (product.pb).toString().spaceSeparateNumbers(),
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        color: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.7),
                                        decorationColor: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.7),
                                      ),
                                ),
                                Text(
                                  ' ₽',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                    color:
                                        BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                    decorationColor:
                                        BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                  ),
                                )
                              ],
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isButton)
          Padding(
            padding: const EdgeInsets.only(
              top: 14,
              bottom: 24,
            ),
            child: BlindChickenButton(
              title: 'Показать все',
              onChenge: onMoreInfo,
            ),
          ),
      ],
    );
  }
}
