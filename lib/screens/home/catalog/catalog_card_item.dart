import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCardItem extends StatefulWidget {
  const CatalogCardItem({
    super.key,
    required this.imageUrl,
    required this.brend,
    required this.category,
    required this.yourPrice,
    required this.price,
    required this.maximumCashback,
    required this.onSelect,
    required this.onAddFavouriteProduct,
    required this.onDeleteFavouriteProduct,
    required this.isLike,
    required this.isShop,
    required this.isYourPriceDisplayed,
    required this.pb,
    required this.onAddProductToSoppingCart,
    required this.listSize,
    required this.isLoad,
  });

  final String imageUrl;
  final String brend;
  final String category;
  final String yourPrice;
  final String price;
  final int pb;
  final String maximumCashback;
  final bool isLike;
  final bool isShop;
  final bool isLoad;
  final bool isYourPriceDisplayed;
  final VoidCallback onSelect;
  final VoidCallback onAddFavouriteProduct;
  final VoidCallback onDeleteFavouriteProduct;
  final VoidCallback onAddProductToSoppingCart;
  final List<SkuProductDataModel> listSize;

  @override
  State<CatalogCardItem> createState() => _CatalogCardItemState();
}

class _CatalogCardItemState extends State<CatalogCardItem> {
  bool _isLike = false;
  bool _isShop = false;

  @override
  void initState() {
    _isLike = widget.isLike;
    _isShop = widget.isShop;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CatalogCardItem oldWidget) {
    _isLike = widget.isLike;
    _isShop = widget.isShop;
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
              children: [
                CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width / 2 - 21,
                  height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                  placeholder: (context, url) => SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 21,
                    height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                    child: const LoadingImage(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 21,
                  height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.brend,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              widget.category,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.pb > int.parse(widget.price))
                        Row(
                          children: [
                            Text(
                              (widget.pb).toString().spaceSeparateNumbers(),
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    color:
                                        BlindChickenColors.activeBorderTextField.withOpacity(0.7),
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
                                decorationColor:
                                    BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                              ),
                            )
                          ],
                        ),
                      RichText(
                        text: TextSpan(
                          text: widget.price.spaceSeparateNumbers(),
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
                      if (widget.isYourPriceDisplayed)
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
                                text: (widget.yourPrice).spaceSeparateNumbers(),
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
                                          color: BlindChickenColors.activeBorderTextField
                                              .withOpacity(0.7),
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
                          RichText(
                            maxLines: 2,
                            text: TextSpan(
                              text: 'Выгода до ',
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color:
                                        BlindChickenColors.activeBorderTextField.withOpacity(0.7),
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${widget.maximumCashback.spaceSeparateNumbers()} ₽',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        color: BlindChickenColors.activeBorderTextField
                                            .withOpacity(0.7),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (widget.pb > int.parse(widget.price) || widget.isYourPriceDisplayed)
                      const SizedBox(
                        height: 25,
                      ),
                    InkWell(
                      onTap: () {
                        widget.onAddProductToSoppingCart();
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.borderBottomColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: _isShop
                                  ? BlindChickenColors.borderSwitchCard
                                  : BlindChickenColors.borderBottomColor,
                              width: 3,
                            ),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: widget.isLoad
                              ? const CircularProgressIndicator(
                                  strokeWidth: 2,
                                )
                              : SvgPicture.asset(
                                  'assets/icons/shop_cart.svg',
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
