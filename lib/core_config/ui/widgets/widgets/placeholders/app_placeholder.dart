import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/buttons/base_button.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppPlaceholder extends StatelessWidget {
  const AppPlaceholder({
    required this.title,
    required this.description,
    required this.iconSvgPath,
    this.buttonText,
    this.buttonPressed,
    super.key,
  });

  final String title;
  final String description;
  final String iconSvgPath;
  final String? buttonText;
  final VoidCallback? buttonPressed;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(context),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _buildTitle(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: _buildDescription(context),
          ),
          if (buttonText != null)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: _buildButton(),
            ),
        ],
      );

  Widget _buildIcon(BuildContext context) => Container(
        width: 64,
        height: 64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerHighest,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSvgPath,
          width: 32,
          height: 32,
          colorFilter: ColorFilter.mode(context.colorScheme.onSurface, BlendMode.srcIn),
        ),
      );

  Widget _buildTitle(BuildContext context) => Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyles.headlineSmall(context.colorScheme.onSurface),
      );

  Widget _buildDescription(BuildContext context) => Text(
        description,
        textAlign: TextAlign.center,
        style: AppTextStyles.bodyMedium(context.colorScheme.onSurface),
      );

  Widget _buildButton() => BaseButton(
        text: buttonText!,
        expanded: false,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        height: 36,
        onPressed: buttonPressed,
      );
}
