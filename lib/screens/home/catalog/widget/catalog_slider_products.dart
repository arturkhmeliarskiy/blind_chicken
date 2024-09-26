import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_product_item.dart';
import 'package:flutter/material.dart';

import 'package:models/models.dart';

class CatalogSliderProducts extends StatefulWidget {
  const CatalogSliderProducts({
    super.key,
    required this.listProducts,
    required this.favouritesProductsId,
    required this.onSelectProduct,
    required this.addLike,
    required this.deleteLike,
    required this.isAuth,
  });

  final List<ProductDataModel> listProducts;
  final List<int> favouritesProductsId;
  final ValueChanged<ProductDataModel> onSelectProduct;
  final ValueChanged<int> addLike;
  final ValueChanged<int> deleteLike;
  final bool isAuth;

  @override
  State<CatalogSliderProducts> createState() => _CatalogSliderProductsState();
}

class _CatalogSliderProductsState extends State<CatalogSliderProducts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.listProducts.length, (index) {
          return CatalogSliderProductItem(
            onTap: () {
              widget.onSelectProduct(widget.listProducts[index]);
            },
            product: widget.listProducts[index],
            isLike: widget.favouritesProductsId.contains(
              widget.listProducts[index].id,
            ),
            listItems: widget.listProducts,
            addLike: () {
              widget.addLike(index);
            },
            deleteLike: () {
              widget.deleteLike(index);
            },
            isAuth: widget.isAuth,
          );
        }),
      ),
    );
  }
}
