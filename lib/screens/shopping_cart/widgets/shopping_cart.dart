import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({
    super.key,
    required this.item,
    required this.removeProduct,
    required this.onSelectCard,
    required this.isBordrerBottom,
    required this.updateProduct,
    required this.count,
    required this.price,
    required this.isAuth,
  });

  final BasketFullInfoItemDataModel item;
  final bool isBordrerBottom;
  final int count;
  final int price;
  final bool isAuth;
  final ValueChanged<BasketInfoItemDataModel> removeProduct;
  final VoidCallback onSelectCard;
  final ValueChanged<BasketInfoItemDataModel> updateProduct;

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int count = 1;
  int price = 0;
  bool isLoadPole = false;
  bool isLoadMinus = false;
  bool isLoadDelete = false;

  @override
  void initState() {
    price = widget.price;
    count = widget.count;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ShoppingCart oldWidget) {
    price = widget.price;
    count = widget.count;
    isLoadPole = false;
    isLoadMinus = false;
    isLoadDelete = false;
    super.didUpdateWidget(oldWidget);
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
                  imageUrl: 'https://slepayakurica.ru/${widget.item.data.foto}',
                  height: 120,
                ),
                Expanded(
                  child: Padding(
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
                            if (widget.item.data.basePrice > price)
                              Text(
                                '${widget.item.data.basePrice.toString().spaceSeparateNumbers()} ₽',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                              ),
                          ],
                        ),
                        if (widget.item.data.loyaltyDiscount1 > 0)
                          Text(
                            'Ваша скидка ${(widget.item.data.loyaltyDiscount1.toInt() * count).toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        const SizedBox(
                          height: 2,
                        ),
                        if (widget.item.data.promoDiscount1 > 0)
                          Text(
                            'Промоскидка ${(widget.item.data.promoDiscount1.toInt() * count).toString().spaceSeparateNumbers()} ₽',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.item.data.brand.n,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                          maxLines: 2,
                        ),
                        Text(
                          widget.item.data.category.n,
                          style: Theme.of(context).textTheme.displayMedium,
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          widget.item.skuName,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
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
                          count--;
                          isLoadMinus = true;
                          widget.updateProduct(
                            BasketInfoItemDataModel(
                              sku: widget.item.sku,
                              count: count,
                              code: widget.item.code,
                            ),
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
                        padding: isLoadMinus
                            ? null
                            : const EdgeInsets.only(
                                top: 13,
                                left: 8,
                                right: 8,
                                bottom: 13,
                              ),
                        child: isLoadMinus
                            ? const Padding(
                                padding: EdgeInsets.all(6),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : Container(
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
                          isLoadPole = true;
                          // price = widget.product.price * count;
                          widget.updateProduct(
                            BasketInfoItemDataModel(
                              sku: widget.item.sku,
                              count: count,
                              code: widget.item.code,
                            ),
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
                        child: isLoadPole
                            ? const Padding(
                                padding: EdgeInsets.all(6),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text(
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
                  onTap: () {
                    widget.removeProduct(
                      BasketInfoItemDataModel(
                        sku: widget.item.sku,
                        count: 0,
                        code: widget.item.code,
                      ),
                    );
                    setState(() {
                      isLoadDelete = true;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(5),
                    child: isLoadDelete
                        ? const Padding(
                            padding: EdgeInsets.all(2),
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          )
                        : SvgPicture.asset(
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
