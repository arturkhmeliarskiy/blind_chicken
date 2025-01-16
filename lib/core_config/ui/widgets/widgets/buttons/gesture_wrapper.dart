import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/red_border.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';


class GestureWrapper extends StatelessWidget {
  /// Сделан для улучшеного отклика на клик по айтему от GestureDetector,
  /// благодаря этой обретке виджеты будут регистрировать "квадрат", а не контент,
  /// особенно необходимо для Text, Icon, SvgPicture
  const GestureWrapper({
    super.key,
    this.onTap,
    required this.child,
    this.needRedBorder,
  });

  final VoidCallback? onTap;
  final Widget child;
  final bool? needRedBorder;

  @override
  Widget build(BuildContext context) {
    if (needRedBorder != true) {
      return InkWell(
        hoverColor: context.colorScheme.onSurface,
        focusColor: context.colorScheme.onSurface,
        splashColor: AppColors.darkText.withOpacity(0.1),
        onTap: () {
          onTap?.call();
        },
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: child,
        ),
      );
    } else {
      return InkWell(
        hoverColor: context.colorScheme.onSurface,
        focusColor: context.colorScheme.onSurface,
        splashColor: AppColors.darkText.withOpacity(0.1),
        onTap: () {
          onTap?.call();
        },
        child: RedBorder(
          child: child,
        ),
      );
    }
  }
}
