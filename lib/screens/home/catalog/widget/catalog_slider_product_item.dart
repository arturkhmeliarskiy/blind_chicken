import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogSliderProductItem extends StatefulWidget {
  const CatalogSliderProductItem({
    super.key,
    required this.product,
    required this.isLike,
    required this.listItems,
    required this.onTap,
    required this.addLike,
    required this.deleteLike,
    required this.isAuth,
  });

  final ProductDataModel product;
  final List<ProductDataModel> listItems;
  final VoidCallback onTap;
  final VoidCallback addLike;
  final VoidCallback deleteLike;
  final bool isLike;
  final bool isAuth;

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
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 140,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.product.pb > widget.product.price)
                Row(
                  children: [
                    Text(
                      (widget.product.pb).toString().spaceSeparateNumbers(),
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                            decorationColor:
                                BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                          ),
                    ),
                    Text(
                      ' ₽',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough,
                        color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                        decorationColor: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              RichText(
                text: TextSpan(
                  text: widget.product.price.toString().spaceSeparateNumbers(),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: BlindChickenColors.activeBorderTextField,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' ₽',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: BlindChickenColors.activeBorderTextField,
                          ),
                    ),
                  ],
                ),
              ),
              if (widget.product.isYourPriceDisplayed)
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: BlindChickenColors.borderBottomColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 17,
                      width: 17,
                      padding: const EdgeInsets.all(2),
                      child: SvgPicture.asset(
                        'assets/icons/percent.svg',
                        height: 15,
                        width: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        text: widget.product.yourPrice.toString().spaceSeparateNumbers(),
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
                            text: '',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.isAuth && widget.product.yourPrice != widget.product.price)
                    RichText(
                      maxLines: 2,
                      text: TextSpan(
                        text: 'Кэшбэк до ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '${widget.product.maximumCashback.toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                ),
                          ),
                        ],
                      ),
                    )
                  else
                    RichText(
                      maxLines: 2,
                      text: TextSpan(
                        text: 'Выгода до ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '${(widget.product.maximumCashback + widget.product.maximumPersonalDiscount).toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                ),
                          ),
                        ],
                      ),
                    ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
