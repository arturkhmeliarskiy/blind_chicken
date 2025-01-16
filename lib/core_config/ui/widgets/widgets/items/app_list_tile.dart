import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/line.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    this.onTap,
    this.title,
    this.subtitle,
    this.trailing,
    this.leading,
    this.subtitleStyle,
    this.titleStyle,
    this.padding,
    this.minLeadingWidth,
    this.visualDensity,
    this.titleChild,
    this.borderTop = false,
    this.borderBottom = true,
    this.dense = true,
    this.enable = true,
    super.key,
  });

  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Widget? leading;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final EdgeInsetsGeometry? padding;
  final double? minLeadingWidth;
  final VisualDensity? visualDensity;
  final Widget? titleChild;
  final bool borderTop;
  final bool borderBottom;
  final bool dense;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    var res = Container(
      key: key,
      color: enable == true ? Colors.transparent : Colors.white,
      child: Column(
        key: key,
        children: [
          borderTop ? const Line() : const SizedBox(),
          ListTile(
            key: key,
            horizontalTitleGap: minLeadingWidth,
            minLeadingWidth: minLeadingWidth,
            minVerticalPadding: 0,
            contentPadding: padding,
            dense: dense,
            visualDensity: visualDensity,
            leading: leading,
            tileColor: AppColors.bg,
            title: titleChild ??
                Text(
                  title ?? '',
                  style: titleStyle ?? AppTextStyles.bodySmall(AppColors.darkText),
                ),
            onTap: onTap,
            subtitle: subtitle != null && (subtitle?.isNotEmpty ?? false)
                ? Text(
                    subtitle ?? '',
                    style: subtitleStyle ?? AppTextStyles.labelMedium(AppColors.grey76),
                  )
                : null,
            trailing: trailing,
          ),
          borderBottom ? const Line() : const SizedBox(),
        ],
      ),
    );
    return enable == true ? Material(key: key, color: Colors.white, child: res) : res;
  }
}

class AppListTileChevronRight extends StatelessWidget {
  const AppListTileChevronRight({
    required this.title,
    this.onTap,
    this.subtitle,
    this.titleChild,
    this.padding,
    this.leading,
    this.chevron,
    this.subtitleStyle,
    this.titleStyle,
    this.minLeadingWidth,
    this.borderTop = false,
    this.borderBottom = true,
    this.dense = true,
    this.enable = true,
    this.chevronCenter = false,
    super.key,
  });
  final String title;
  final Widget? titleChild;
  final String? subtitle;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final Widget? leading;
  final Widget? chevron;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final double? minLeadingWidth;

  final bool borderTop;
  final bool borderBottom;
  final bool dense;
  final bool enable;
  final bool chevronCenter;

  @override
  Widget build(BuildContext context) {
    var chevronIcon = SvgPicture.asset(
      Assets.icons.other.chevronRight,
      colorFilter: ColorFilter.mode(
        AppColors.greyDD,
        BlendMode.srcIn,
      ),
    );
    var chevron = (chevronCenter == true)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              chevronIcon,
            ],
          )
        : chevronIcon;

    return AppListTile(
      dense: dense,
      title: title,
      enable: enable,
      titleChild: titleChild,
      borderTop: borderTop,
      borderBottom: borderBottom,
      minLeadingWidth: minLeadingWidth,
      subtitle: subtitle,
      subtitleStyle: subtitleStyle,
      titleStyle: titleStyle,
      onTap: onTap,
      leading: leading,
      padding: padding,
      trailing: chevron,
    );
  }
}
