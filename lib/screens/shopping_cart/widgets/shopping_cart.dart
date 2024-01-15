import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({
    super.key,
    required this.product,
    required this.removeProduct,
    required this.onSelectCard,
    required this.isBordrerBottom,
    required this.updateUnitProduct,
  });

  final ProductDataModel product;
  final bool isBordrerBottom;
  final VoidCallback removeProduct;
  final VoidCallback onSelectCard;
  final ValueChanged<ShoppingCartDataModel> updateUnitProduct;

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int count = 1;
  int price = 0;
  final int _discount = 2000;
  final bool _isAuth = false;

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
                CachedNetworkImage(
                  imageUrl: widget.product.images[0],
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${'$price'.spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          if (!_isAuth)
                            Text(
                              '${'${price - _discount}'.spaceSeparateNumbers()} ₽',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                        ],
                      ),
                      if (!_isAuth)
                        Text(
                          'Ваша скидка $_discount ₽',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.product.brend,
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontWeight: FontWeight.w700,
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
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (count > 1) {
                            count--;
                            price = price - widget.product.price;
                            widget.updateUnitProduct(
                              ShoppingCartDataModel(
                                  product: widget.product, count: count, price: price),
                            );
                          }
                        });
                      },
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.backgroundColorItemFilter,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.only(
                          top: 13,
                          left: 8,
                          right: 8,
                          bottom: 13,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: BlindChickenColors.activeBorderTextField,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 84,
                      child: Text(
                        count.toString(),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                          price = widget.product.price * count;
                          widget.updateUnitProduct(
                            ShoppingCartDataModel(
                                product: widget.product, count: count, price: price),
                          );
                        });
                      },
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.backgroundColorItemFilter,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '+',
                          style: TextStyle(
                            fontSize: 22,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: widget.removeProduct,
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      'assets/icons/shopping_cart.svg',
                      height: 17.5,
                      width: 17.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.5,
            ),
            if (widget.isBordrerBottom)
              const Divider(
                color: BlindChickenColors.borderBottomColor,
              )
          ],
        ),
      ),
    );
  }
}
