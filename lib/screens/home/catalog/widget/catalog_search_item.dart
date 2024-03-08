import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

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
                        product.title,
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
                      Text(
                        '${product.price} ₽',
                        style: Theme.of(context).textTheme.displayMedium,
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
