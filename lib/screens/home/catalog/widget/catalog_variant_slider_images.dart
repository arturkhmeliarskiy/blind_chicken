import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CatalogVariantSliderImages extends StatelessWidget {
  const CatalogVariantSliderImages({
    super.key,
    required this.listImages,
  });

  final List<String> listImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: listImages.length - 1 == index ? 0 : 10,
            ),
            child: CachedNetworkImage(
              imageUrl: listImages[index],
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }
}
