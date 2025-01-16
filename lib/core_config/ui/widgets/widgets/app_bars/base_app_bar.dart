import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:blind_chicken/core_config/ui/resources/app_color_scheme_extension.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/line.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

bool _innerCenterTitle = false;

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({
    super.key,
    this.onBackPressed,
    this.centerTitle,
    this.title,
    this.titleStyle,
    this.subtitle,
    this.svgIconPath,
    this.needBorder = true,
    this.borderColor,
    this.backButton,
    this.trailing,
    this.padding,
    this.titleWidget,
  });

  final VoidCallback? onBackPressed;
  final bool? centerTitle;

  final String? title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final String? svgIconPath;
  final bool needBorder;
  final Color? borderColor;
  final Widget? backButton;
  final Widget? trailing;
  final EdgeInsets? padding;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    _innerCenterTitle = centerTitle ?? false;
    if (centerTitle == null && (Platform.isIOS || Platform.isMacOS)) {
      _innerCenterTitle = true;
    }
    return Column(
      children: [
        Container(
          height: 58,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
          ),
          child: Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 10),
            child: _innerCenterTitle == true
                ? Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: _buildBackButton(context),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: _buildTitles(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (trailing != null)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                trailing!,
                              ],
                            ),
                          ],
                        )
                    ],
                  )
                : Row(
                    children: [
                      _buildBackButton(context),
                      const SizedBox(width: 20),
                      Expanded(child: _buildTitles(context)),
                      if (trailing != null) trailing!,
                    ],
                  ),
          ),
        ),
        if (needBorder == true) Line(color: borderColor),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) {
    Widget? thisBackButton = backButton;
    if (Platform.isIOS || Platform.isMacOS) {
      thisBackButton = Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.darkText,
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        onBackPressed == null ? Navigator.of(context).pop() : onBackPressed?.call();
      },
      child: thisBackButton ??
          SvgPicture.asset(
            Assets.imagesExternal.arrowBack,
            width: 30,
            height: 30,
          ),
    );
  }

  Widget _buildTitles(BuildContext context) {
    return Padding(
      padding: _innerCenterTitle == true ? const EdgeInsets.only(left: 24.0, right: 24) : EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: _innerCenterTitle == true ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          if (titleWidget != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: titleWidget,
            ),
          if (title != null && titleWidget == null)
            Row(
              crossAxisAlignment: _innerCenterTitle == true ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AutoSizeText(
                    textAlign: _innerCenterTitle == true ? TextAlign.center : TextAlign.start,
                    title!,
                    style: titleStyle ??
                        AppTextStyles.headlineSmall(
                          context.colorScheme.onSurface,
                        ).copyWith(overflow: TextOverflow.ellipsis, letterSpacing: 0),
                    maxLines: 1,
                    minFontSize: 1,
                  ),
                ),
              ],
            ),
          if (subtitle != null && titleWidget == null)
            Row(
              children: [
                Expanded(
                  child: AutoSizeText(
                    subtitle!,
                    textAlign: _innerCenterTitle == true ? TextAlign.center : TextAlign.start,
                    style: AppTextStyles.labelMedium(context.colorScheme.onBackgroundSecondary)
                        .copyWith(overflow: TextOverflow.ellipsis),
                    maxLines: 1,
                    minFontSize: 1,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
