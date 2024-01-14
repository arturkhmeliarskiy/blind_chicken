import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogSearchItem extends StatelessWidget {
  const CatalogSearchItem({
    super.key,
    required this.product,
    required this.isButton,
  });

  final ProductDataModel product;
  final bool isButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                    product.catrgory,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    '${product.price} ₽',
                    style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),
            ],
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
              onChenge: () {
                context.navigateTo(const CatalogSearchResultRoute());
              },
            ),
          ),
      ],
    );
  }
}
