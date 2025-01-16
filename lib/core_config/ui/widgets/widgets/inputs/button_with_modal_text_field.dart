import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/line.dart';
import 'package:blind_chicken/core_config/utils/string_extensions.dart';
import 'package:flutter/material.dart';


class ButtonWithModalTextField extends StatelessWidget {
  const ButtonWithModalTextField(
      {required this.title,
      required this.hint,
      required this.onTap,
      this.storeCurrency,
      this.isFormatRequired,
      this.hintTextStyle,
      this.value = '',
      super.key});

  final String title;
  final String hint;
  final String value;
  final VoidCallback onTap;
  final String? storeCurrency;
  final bool? isFormatRequired;
  final TextStyle? hintTextStyle;

  @override
  Widget build(BuildContext context) {
    final currency = storeCurrency != null ? ' $storeCurrency' : '';
    final formatted = isFormatRequired != null ? formatNumber(double.tryParse(value) ?? 0.0) : value;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          const Line(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.labelMedium(AppColors.grey43),
                ),
                const SizedBox(
                  height: 2,
                ),
                value.isEmpty
                    ? Text(
                        hint,
                        style: hintTextStyle ?? AppTextStyles.bodyMedium(AppColors.greyEA),
                      )
                    : Text(
                        formatted + currency,
                        style: AppTextStyles.bodyMedium(AppColors.grey43),
                      ),
                const Line(),
              ],
            ),
          ),
          const Line(),
        ],
      ),
    );
  }
}
