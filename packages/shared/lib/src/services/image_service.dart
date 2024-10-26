import 'dart:async';

import 'package:flutter/material.dart';

class ImageService {
  Future<ImageInfo> getImageUrlInfo(String url) async {
    Image image = Image.network(url);
    Completer<ImageInfo> c = Completer<ImageInfo>();
    image.image.resolve(ImageConfiguration()).addListener(ImageStreamListener((
      ImageInfo i,
      bool _,
    ) {
      c.complete(i);
    }));
    return c.future;
  }
}
