import 'package:blind_chicken/core_config/localization/l10n/generated/l10n.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/buttons/base_button.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<void> showDualSelectionModal({
  required BuildContext context,
  String? iconSvgPath,
  String? title,
  String? description,
  String? buttonTextLeft,
  String? buttonTextRight,
  VoidCallback? onPressedButtonLeft,
  VoidCallback? onPressedButtonRight,
  VoidCallback? onPressedClose,
  bool? isDismissible,
}) async {
  await showCustomModalBottomSheet(
    duration: const Duration(),
    context: context,
    isDismissible: isDismissible ?? true,
    builder: (BuildContext _) => _DualSelectionModal(
      context: context,
      iconSvgPath: iconSvgPath,
      title: title,
      description: description,
      buttonTextLeft: buttonTextLeft,
      buttonTextRight: buttonTextRight,
      onPressedButtonLeft: onPressedButtonLeft,
      onPressedButtonRight: onPressedButtonRight,
      onPressedClose: onPressedClose,
    ),
    containerWidget: (_, animation, child) => child,
  );
}

class _DualSelectionModal extends StatelessWidget {
  const _DualSelectionModal({
    required this.context,
    this.iconSvgPath,
    this.title,
    this.description,
    this.buttonTextLeft,
    this.buttonTextRight,
    this.onPressedButtonLeft,
    this.onPressedButtonRight,
    this.onPressedClose,
  });

  final BuildContext context;
  final String? iconSvgPath;
  final String? title;
  final String? description;
  final VoidCallback? onPressedClose;
  final String? buttonTextLeft;
  final String? buttonTextRight;
  final VoidCallback? onPressedButtonLeft;
  final VoidCallback? onPressedButtonRight;

  @override
  Widget build(BuildContext _) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(32, 0, 32, MediaQuery.sizeOf(context).height / 100 * 35),
        child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              _buildCloseButton(onPressed: onPressedClose),
              if (iconSvgPath != null) _buildImage(iconSvgPath: iconSvgPath),
              if (title != null) const SizedBox(height: 16),
              if (title != null) _buildTitle(text: title!),
              if (description != null) const SizedBox(height: 16),
              if (description != null) _buildDescription(text: description!),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: _buildButton(buttonText: buttonTextLeft, onPressed: onPressedButtonLeft)),
                  Expanded(child: _buildButton(buttonText: buttonTextRight, onPressed: onPressedButtonRight)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCloseButton({VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: () {
        if (onPressed == null) {
          Navigator.pop(context);
        } else {
          onPressed.call();
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            Assets.imagesExternal.xCancel,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              AppColors.greyEA,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _buildImage({String? iconSvgPath}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SvgPicture.asset(
        iconSvgPath ?? Assets.imagesExternal.damage,
        width: 50,
        height: 50,
        colorFilter: ColorFilter.mode(
          AppColors.primary,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  Widget _buildTitle({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyles.headlineSmall(
          AppColors.darkText,
        ),
      ),
    );
  }

  Widget _buildDescription({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyles.bodySmall(
          AppColors.darkText,
        ),
      ),
    );
  }

  Widget _buildButton({String? buttonText, VoidCallback? onPressed}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BaseButton(
        color: AppColors.primary,
        textStyle: AppTextStyles.titleMedium(AppColors.white),
        text: buttonText ?? AppLocalization.current.ok,
        onPressed: () {
          if (onPressed == null) {
            Navigator.pop(context);
          } else {
            onPressed.call();
          }
        },
      ),
    );
  }
}
