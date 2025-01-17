import 'dart:io';

import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BaseLoader extends StatelessWidget {
  const BaseLoader({
    required this.size,
    this.color,
    this.needBackground = false,
    super.key,
  });

  final double size;
  final Color? color;
  final bool needBackground;

  @override
  Widget build(BuildContext context) {
    Color thisColor = color ?? AppColors.secondary;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: needBackground ? AppColors.background : Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: size,
      height: size,
      child: Platform.isAndroid
          ? SizedBox(
              height: needBackground ? (size - 15) : size,
              width: needBackground ? (size - 15) : size,
              child: CircularProgressIndicator(color: thisColor, strokeWidth: 3),
            )
          : CupertinoActivityIndicator(radius: needBackground ? (size / 2 - 7.5) : size / 2, color: thisColor),
    );
  }
}
