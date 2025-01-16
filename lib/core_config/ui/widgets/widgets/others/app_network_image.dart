import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.placeholderWidget,
    this.errorWidget,
    this.iconSize,
    this.fit,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final double? iconSize;
  final Widget? placeholderWidget;
  final Widget? errorWidget;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit ?? BoxFit.cover,
      imageUrl: imageUrl,
      placeholder: (context, str) {
        if (placeholderWidget != null) {
          return Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: placeholderWidget!,
          );
        }
        return Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white,
          child: Center(
            child: Icon(
              Icons.image,
              size: iconSize ?? height,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        if (errorWidget != null) {
          return errorWidget!;
        }
        return Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.red,
          child: Center(
            child: Icon(
              Icons.error,
              size: iconSize ?? height,
            ),
          ),
        );
      },
      height: height,
      width: width,
      //cacheKey: imageUrl,
      //cacheManager: CacheManager(
      //  Config(
      //    imageUrl,
      //    stalePeriod: const Duration(days: 3),
      //    //tree day cache period
      //  ),
      //),
    );
  }
}
