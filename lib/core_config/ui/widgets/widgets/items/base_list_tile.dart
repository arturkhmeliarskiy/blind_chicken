import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/line.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BaseListTile extends StatelessWidget {
  const BaseListTile({
    required this.title,
    this.titleWidget,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.widgetAfterTitle,
    this.leadingSvgIconPath,
    this.leadingSvgColor,
    this.leadingWidget,
    this.leadingPadding,
    this.trailingSvgIconPath,
    this.trailingSvgSize,
    this.trailingSvgColor,
    this.trailingWidget,
    this.onPressed,
    this.padding,
    this.needBorderTop = false,
    this.needBorderBottom = false,
    this.cancelEllipsis,
    super.key,
  });

  final String? leadingSvgIconPath;
  final Color? leadingSvgColor;
  final Widget? leadingWidget;
  final EdgeInsets? leadingPadding;
  final String? trailingSvgIconPath;
  final double? trailingSvgSize;
  final Color? trailingSvgColor;
  final Widget? trailingWidget;
  final Widget? widgetAfterTitle;
  final String title;
  final Widget? titleWidget;
  final String? subtitle;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;
  final bool needBorderTop;
  final bool needBorderBottom;
  final bool? cancelEllipsis;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        needBorderTop ? const Line() : const SizedBox(),
        AnimatedContainer(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
          ),
          duration: const Duration(seconds: 2),
          child: Material(
            child: InkWell(
              hoverColor: context.colorScheme.onSurface,
              focusColor: context.colorScheme.onSurface,
              splashColor: AppColors.darkText.withOpacity(0.1),
              onTap: () {
                onPressed?.call();
              },
              child: Padding(
                padding: padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  children: [
                    _buildLeading(context),
                    Expanded(
                      child: buildTitle(context),
                    ),
                    if (trailingSvgIconPath != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: _buildTrailing(context),
                      )
                    else if (trailingWidget != null)
                      trailingWidget!
                  ],
                ),
              ),
            ),
          ),
        ),
        needBorderBottom ? const Line() : const SizedBox(),
      ],
    );
  }

  Widget buildTitle(BuildContext context) {
    if (widgetAfterTitle != null) {
      return Row(
        children: [
          _buildTitleText(context),
          const SizedBox(
            width: 8,
          ),
          widgetAfterTitle!,
        ],
      );
    }
    return _buildTitleText(context);
  }

  Widget _buildLeading(BuildContext context) {
    if (leadingWidget != null) {
      return Padding(
        padding: leadingPadding ?? const EdgeInsets.only(right: 16.0),
        child: leadingWidget!,
      );
    }
    if (leadingSvgIconPath != null) {
      return Padding(
        padding: leadingPadding ?? const EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            leadingSvgIconPath!,
            width: 24,
            height: 24,
            color: leadingSvgColor ?? AppColors.black,
          ),
        ),
      );
    }

    return const SizedBox();
  }

  Widget _buildTitleText(BuildContext context) {
    if (subtitle != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget ??
              Text(
                title,
                overflow: cancelEllipsis == true ? null : TextOverflow.ellipsis,
                style: titleStyle ?? AppTextStyles.bodySmall(AppColors.grey43),
              ),
          Text(
            subtitle!,
            overflow: cancelEllipsis == true ? null : TextOverflow.ellipsis,
            style: subtitleStyle ?? AppTextStyles.bodyMedium(AppColors.black),
          ),
        ],
      );
    }
    return titleWidget ??
        Text(
          title,
          overflow: cancelEllipsis == true ? null : TextOverflow.ellipsis,
          style: titleStyle ?? AppTextStyles.bodySmall(AppColors.darkText),
        );
  }

  Widget _buildTrailing(BuildContext context) {
    if (trailingSvgSize != null) {
      return SizedBox(
        width: trailingSvgSize,
        height: trailingSvgSize,
        child: SvgPicture.asset(
          trailingSvgIconPath!,
          width: trailingSvgSize,
          height: trailingSvgSize,
          color: trailingSvgColor ?? AppColors.greyAD,
        ),
      );
    }
    return SizedBox(
      width: 24,
      height: 24,
      child: SvgPicture.asset(
        trailingSvgIconPath!,
        width: 24,
        height: 24,
        color: trailingSvgColor ?? AppColors.greyAD,
      ),
    );
  }
}
