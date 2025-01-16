import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';


class ImagePreview extends StatelessWidget {
  const ImagePreview({
    this.image,
    this.url,
    super.key,
  }) : assert(image != null || url != null, 'Image or url must be not empty');
  final String? url;
  final File? image;

  @override
  Widget build(BuildContext context) {
    final resolvedUrl = url;
    final resolvedImage = image;

    final effectiveImage = Builder(
      builder: (context) {
        if (resolvedImage != null) {
          return Image.file(
            resolvedImage,
            fit: BoxFit.cover,
          );
        }
        if (resolvedUrl == null || resolvedUrl.isEmpty) return Container();
        if (resolvedUrl.contains('base64')) {
          return Image.memory(
            UriData.parse(resolvedUrl).contentAsBytes(),
            fit: BoxFit.contain,
          );
        } else {
          return Image.network(
            resolvedUrl,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) {
              return Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: AppColors.greyEA,
                ),
                child: const Center(
                  child: Icon(Icons.error),
                ),
              );
            },
          );
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: effectiveImage,
        ),
      ),
    );
  }
}
