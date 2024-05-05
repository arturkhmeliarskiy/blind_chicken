import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogSliderItemImage extends StatefulWidget {
  const CatalogSliderItemImage({
    super.key,
    required this.isZoom,
    required this.image,
  });

  final bool isZoom;
  final String image;

  @override
  State<CatalogSliderItemImage> createState() => _CatalogSliderItemImageState();
}

class _CatalogSliderItemImageState extends State<CatalogSliderItemImage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return CachedNetworkImage(
      imageUrl: 'https://slepayakurica.ru/${widget.image}',
      width: MediaQuery.of(context).orientation == Orientation.portrait ? width : width,
      height: height,
      fit: BoxFit.cover,
      imageBuilder: widget.isZoom
          ? (context, imageProvider) => PhotoView(
                tightMode: true,
                imageProvider: imageProvider,
                filterQuality: FilterQuality.high,
                gaplessPlayback: false,
                basePosition: Alignment.center,
                minScale: PhotoViewComputedScale.contained,
                customSize: MediaQuery.of(context).size * 0.99,
                backgroundDecoration: const BoxDecoration(
                  color: BlindChickenColors.backgroundColorItemFilter,
                ),
              )
          : null,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
