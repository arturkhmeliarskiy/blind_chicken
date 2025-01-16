import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';


class CircularHolder extends StatelessWidget {
  const CircularHolder({super.key, this.size, this.padding, this.color});

  final double? size;
  final EdgeInsets? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Center(
        child: SizedBox(
          height: size ?? 40.0,
          width: size ?? 40.0,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              color ?? context.colorScheme.primary,
            ),
            strokeWidth: 1.5,
          ),
        ),
      ),
    );
  }
}
