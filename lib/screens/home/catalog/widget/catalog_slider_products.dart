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
  });

  final List<ProductDataModel> listProducts;
  final List<int> favouritesProductsId;
  final ValueChanged<ProductDataModel> onSelectProduct;
  final ValueChanged<int> addLike;
  final ValueChanged<int> deleteLike;

  @override
  State<CatalogSliderProducts> createState() => _CatalogSliderProductsState();
}

class _CatalogSliderProductsState extends State<CatalogSliderProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: widget.listProducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
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
          );
        },
      ),
    );
  }
}
