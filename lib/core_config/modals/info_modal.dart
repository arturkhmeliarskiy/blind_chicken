import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/core_config/ui/resources/app_color_scheme_extension.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/buttons/base_button.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class ShowInfoModal extends BlocAction {
  ShowInfoModal({
    this.title,
    this.description,
  });

  final String? title;
  final String? description;
}

Future<void> showInfoModal({
  required BuildContext context,
  String? iconSvgPath,
  required String title,
  required String description,
  String? buttonText,
  VoidCallback? onPressedButton,
  VoidCallback? onPressedClose,
  bool? isDismissible,
}) async {
  await showCustomModalBottomSheet(
    duration: const Duration(),
    context: context,
    isDismissible: isDismissible ?? true,
    builder: (BuildContext _) => _InfoModal(
      context: context,
      iconSvgPath: iconSvgPath,
      title: title,
      description: description,
      buttonText: buttonText,
      onPressedButton: onPressedButton,
      onPressedClose: onPressedClose,
    ),
    containerWidget: (_, animation, child) => child,
  );
}

class _InfoModal extends StatelessWidget {
  const _InfoModal({
    required this.context,
    this.iconSvgPath,
    required this.title,
    required this.description,
    this.buttonText,
    this.onPressedButton,
    this.onPressedClose,
  });

  final BuildContext context;
  final String? iconSvgPath;
  final String title;
  final String description;
  final VoidCallback? onPressedButton;
  final VoidCallback? onPressedClose;
  final String? buttonText;

  @override
  Widget build(BuildContext _) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(32, 0, 32, MediaQuery.sizeOf(context).height / 100 * 30),
        child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              _buildCloseButton(onPressed: onPressedClose),
              //const SizedBox(height: 16),
              _buildImage(iconSvgPath: iconSvgPath),
              const SizedBox(height: 16),
              _buildTitle(text: title),
              const SizedBox(height: 16),
              _buildDescription(text: description),
              const SizedBox(height: 8),
              _buildButton(buttonText: buttonText, onPressed: onPressedButton),
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
            colorFilter: ColorFilter.mode(context.colorScheme.onSurfaceDisabled, BlendMode.srcIn),
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
          context.colorScheme.primary,
          //AppColors.primary,
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
      padding: const EdgeInsets.all(32),
      child: BaseButton(
        color: context.colorScheme.primary,
        textStyle: AppTextStyles.titleMedium(context.colorScheme.onPrimary),
        text: buttonText ?? context.localizations.clearlyUnderstood,
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
