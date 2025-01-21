import 'package:blind_chicken/core_config/ui/resources/app_border_radius.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/inputs/app_text_form_field.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/core_config/utils/list_extensions.dart';
import 'package:flutter/material.dart';

AppTextController _controller = AppTextController();

Future<dynamic> showModalWithTextField({
  required BuildContext context,
  AppTextController? controller,
  Function(String?)? onChanged,
  Function(String?)? onApply,
  String? textToConfirm,
  bool isNumbersOnly = false,
}) async {
  _controller.clear();
  await showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: [
        AppBorderRadius.bottomSheet16,
        AppBorderRadius.bottomSheet20,
      ].byPlatform,
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 8,
        ), //_defaultBottomSheetPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        autofocus: true,
                        //cursorColor: AppColors.primary,
                        keyboardType: isNumbersOnly ? TextInputType.number : null,
                        controller: controller ?? _controller,
                        onChanged: (String value) {
                          onChanged?.call(value);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        onApply?.call(controller?.text ?? _controller.text);
                      },
                      child: Text(textToConfirm ?? context.localizations.apply),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      );
    },
  );
}
