import 'package:flutter/material.dart';

class PageRouteWithoutAnimation<T> extends MaterialPageRoute<T> {
  PageRouteWithoutAnimation({
    required super.builder,
    super.settings,
  });

  @override
  Duration get transitionDuration => Duration.zero;
}
