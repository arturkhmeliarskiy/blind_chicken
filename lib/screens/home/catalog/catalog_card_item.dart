import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCardItem extends StatefulWidget {
  const CatalogCardItem({
    super.key,
    required this.imageUrl,
    required this.brend,
    required this.catrgory,
    required this.yourPrice,
    required this.price,
    required this.maximumCashback,
    required this.onSelect,
    required this.onAddFavouriteProduct,
    required this.onDeleteFavouriteProduct,
    required this.isLike,
    required this.isYourPriceDisplayed,
  });

  final String imageUrl;
  final String brend;
  final String catrgory;
  final String yourPrice;
  final String price;
  final String maximumCashback;
  final bool isLike;
  final bool isYourPriceDisplayed;
  final VoidCallback onSelect;
  final VoidCallback onAddFavouriteProduct;
  final VoidCallback onDeleteFavouriteProduct;

  @override
  State<CatalogCardItem> createState() => _CatalogCardItemState();
}

class _CatalogCardItemState extends State<CatalogCardItem> {
  bool _isLike = false;

  @override
  void initState() {
    _isLike = widget.isLike;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CatalogCardItem oldWidget) {
    _isLike = widget.isLike;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onSelect();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 21,
        margin: const EdgeInsets.all(10.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  fit: BoxFit.fill,
                  placeholder: (context, url) => const SizedBox(
                    height: 230,
                    child: LoadingImage(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isLike = !_isLike;
                    });
                    if (_isLike) {
                      widget.onAddFavouriteProduct();
                    } else {
                      widget.onDeleteFavouriteProduct();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                      _isLike ? 'assets/icons/like_active.svg' : 'assets/icons/like.svg',
                      height: 17.5,
                      width: 17.5,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              widget.brend,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.catrgory,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                text: widget.price.spaceSeparateNumbers(),
                style: Theme.of(context).textTheme.displayMedium,
                children: <TextSpan>[
                  TextSpan(
                    text: ' ₽',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            if (widget.isYourPriceDisplayed)
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: widget.yourPrice.spaceSeparateNumbers(),
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ₽',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        TextSpan(
                          text: ' Ваша цена',
                          style: Theme.of(context).textTheme.displayMedium,
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
                RichText(
                  text: TextSpan(
                    text: ' Выгода до ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: '${widget.maximumCashback.spaceSeparateNumbers()} ₽',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
