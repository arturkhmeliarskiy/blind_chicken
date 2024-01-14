import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_product_item.dart';
import 'package:flutter/material.dart';

import 'package:models/models.dart';

class CatalogSliderProducts extends StatefulWidget {
  const CatalogSliderProducts({
    super.key,
    required this.listProducts,
    required this.favouritesProducts,
  });

  final List<ProductDataModel> listProducts;
  final List<ProductDataModel> favouritesProducts;

  @override
  State<CatalogSliderProducts> createState() => _CatalogSliderProductsState();
}

class _CatalogSliderProductsState extends State<CatalogSliderProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 356,
      child: ListView.builder(
        itemCount: widget.listProducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CatalogSliderProductItem(
            product: widget.listProducts[index],
            isLike: widget.favouritesProducts.contains(
              widget.listProducts[index],
            ),
            listItems: widget.listProducts,
            favouritesProducts: widget.favouritesProducts,
          );
        },
      ),
    );
  }
}
