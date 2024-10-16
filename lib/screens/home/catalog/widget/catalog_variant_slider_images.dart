import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class CatalogVariantSliderImages extends StatelessWidget {
  const CatalogVariantSliderImages({
    super.key,
    required this.listOptionProduct,
    required this.onTap,
  });

  final List<OptionProductDataModel> listOptionProduct;
  final ValueChanged<ProductDataModel> onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOptionProduct.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTap(
                ProductDataModel(
                  id: int.parse(listOptionProduct[index].c),
                  title: listOptionProduct[index].ne,
                  category: listOptionProduct[index].ct,
                  size: [],
                  price: double.parse(listOptionProduct[index].pr).toInt(),
                  yourPrice: 0,
                  brend: listOptionProduct[index].b,
                  lensDiameter: 0,
                  templeLength: 0,
                  country: '',
                  images: [
                    'https://slepayakurica.ru/${listOptionProduct[index].f}',
                  ],
                  variants: [],
                  maximumCashback: 0,
                  discount: 0,
                  maximumPersonalDiscount: 0,
                  isYourPriceDisplayed: false,
                  pb: double.parse(listOptionProduct[index].pr).toInt(),
                  isShop: false,
                  sz: [],
                  promo: '',
                  promoValue: 0,
                  video: DetailProductVideoDataModel(
                    i: '',
                    v: '',
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: listOptionProduct.length - 1 == index ? 0 : 10,
              ),
              child: CachedNetworkImage(
                imageUrl: 'https://slepayakurica.ru/${listOptionProduct[index].f}',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
      ),
    );
  }
}
