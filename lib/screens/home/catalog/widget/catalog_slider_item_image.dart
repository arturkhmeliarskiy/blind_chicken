import 'package:blind_chicken/utils/logging.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view.dart' as photo_view;
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogSliderItemImage extends StatefulWidget {
  const CatalogSliderItemImage({
    super.key,
    required this.isZoom,
    required this.image,
    required this.index,
  });

  final bool isZoom;
  final String image;
  final int index;

  @override
  State<CatalogSliderItemImage> createState() => _CatalogSliderItemImageState();
}

class _CatalogSliderItemImageState extends State<CatalogSliderItemImage> {
  final PhotoViewController _controller = PhotoViewController();

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
                imageProvider: NetworkImage('https://slepayakurica.ru/${widget.image}'),
                controller: _controller,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained * 5,
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: photo_view.PhotoViewHeroAttributes(tag: widget.index),
                backgroundDecoration: const BoxDecoration(
                  color: BlindChickenColors.backgroundColorItemFilter,
                ),
                scaleStateChangedCallback: (value) {
                  logging(value.toString(), stackTrace: StackTrace.current);
                },
              )
          : null,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
