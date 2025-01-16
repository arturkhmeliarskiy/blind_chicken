import 'package:auto_size_text/auto_size_text.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class BaseButtonLine extends StatelessWidget {
  const BaseButtonLine({
    this.text,
    this.onPressed,
    this.enabled = true,
    this.color,
    this.textStyle,
    this.borderColor,
    this.chevronWidget,
    this.height = 48,
    this.width,
    this.expanded = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ),
    this.elevation = 0,
    this.isLoading = false,
    this.disabledColor,
    this.disabledTextStyle,
    this.loaderColor,
    super.key,
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool expanded;
  final bool isLoading;

  final Color? color;
  final Color? disabledColor;
  final Color? loaderColor;
  final TextStyle? textStyle;
  final TextStyle? disabledTextStyle;
  final Color? borderColor;
  final Widget? chevronWidget;
  final double height;
  final double? width;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final double elevation;

  Color _defaultColor(BuildContext context) => context.colorScheme.primary;

  Color _defaultDisabledColor(BuildContext context) => AppColors.greyEA;

  Color _defaultLoadingColor(BuildContext context) => AppColors.lightPurple;

  TextStyle _defaultTextStyle(BuildContext context) => AppTextStyles.titleSmall(
        AppColors.white,
      );

  TextStyle _defaultDisabledTextStyle(BuildContext context) => AppTextStyles.titleSmall(
        AppColors.grey43,
      );

  @override
  Widget build(BuildContext context) {
    Color colorButton = _defaultColor(context);
    if (enabled == false) {
      colorButton = _defaultDisabledColor(context);
      if (isLoading == true) {
        colorButton = _defaultLoadingColor(context);
      }
    }

    return IgnorePointer(
      ignoring: !enabled,
      child: ScaleTap(
        duration: const Duration(milliseconds: 300),
        onPressed: () {
          if (enabled && isLoading == false) {
            onPressed?.call();
          }
        },
        child: Material(
          borderRadius: borderRadius,
          elevation: elevation,
          child: SizedBox(
            height: height,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: borderColor != null ? Border.all(color: borderColor!) : null,
                color: enabled ? color ?? colorButton : disabledColor ?? colorButton,
              ),
              height: height,
              padding: padding,
              width: expanded ? double.maxFinite : width,
              child: text != null
                  ? isLoading
                      ? Center(
                          child: _buildLoader(context),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                text!,
                                textAlign: TextAlign.start,
                                style: enabled
                                    ? textStyle ?? _defaultTextStyle(context)
                                    : disabledTextStyle ?? _defaultDisabledTextStyle(context),
                              ),
                            ),
                            if (chevronWidget != null)
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: chevronWidget,
                              ),
                          ],
                        )
                  : const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoader(BuildContext context) => CircularHolder(
        size: 20,
        color: loaderColor ?? context.colorScheme.onPrimary,
      );
}
