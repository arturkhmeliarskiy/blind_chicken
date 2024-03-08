import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class CatalogSliderProductItem extends StatefulWidget {
  const CatalogSliderProductItem({
    super.key,
    required this.product,
    required this.isLike,
    required this.listItems,
    required this.onTap,
    required this.addLike,
    required this.deleteLike,
  });

  final ProductDataModel product;
  final List<ProductDataModel> listItems;
  final VoidCallback onTap;
  final VoidCallback addLike;
  final VoidCallback deleteLike;
  final bool isLike;

  @override
  State<CatalogSliderProductItem> createState() => _CatalogSliderProductItemState();
}

class _CatalogSliderProductItemState extends State<CatalogSliderProductItem> {
  bool _isLike = false;

  @override
  void initState() {
    _isLike = widget.isLike;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 140,
        height: 400,
        margin: const EdgeInsets.only(right: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: 140,
            height: 140 * 4 / 3,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CachedNetworkImage(
                  imageUrl: widget.product.images[0],
                  width: 140,
                  height: 140 * 4 / 3,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isLike = !_isLike;
                      if (_isLike) {
                        widget.addLike();
                      } else {
                        widget.deleteLike();
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      _isLike ? 'assets/icons/like_active.svg' : 'assets/icons/like.svg',
                      height: 17.5,
                      width: 17.5,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.product.title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.product.category,
            style: Theme.of(context).textTheme.displayMedium,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
            text: TextSpan(
              text: (widget.product.price).toString().spaceSeparateNumbers(),
              style: Theme.of(context).textTheme.displaySmall,
              children: <TextSpan>[
                TextSpan(
                  text: ' ₽',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          if (widget.product.isYourPriceDisplayed)
            Column(
              children: [
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text: (widget.product.yourPrice).toString().spaceSeparateNumbers(),
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ₽',
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      TextSpan(
                        text: ' Ваша цена',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/lightning.svg',
                height: 14,
                width: 14,
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'Выгода до ',
                    style: Theme.of(context).textTheme.displaySmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: (widget.product.price).toString().spaceSeparateNumbers(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: ' ₽',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
