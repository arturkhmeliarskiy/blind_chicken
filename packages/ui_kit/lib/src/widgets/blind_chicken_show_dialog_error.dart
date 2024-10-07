import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenShowDialogError {
  BuildContext? _dialogContext;

  openShowDualog({
    required String errorMessage,
    required BuildContext context,
    required VoidCallback onRepeatRequest,
    Widget? widget,
  }) {
    showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false,
      barrierColor: BlindChickenColors.activeBorderTextField.withOpacity(0.3),
      pageBuilder: (context, __, ___) {
        _dialogContext = context;
        return BlindChickenModalErrorInfo(
          errorMessage: errorMessage,
          onRepeatRequest: onRepeatRequest,
          widget: widget,
        );
      },
    );
  }

  closeShowDialog({BuildContext? context}) {
    Navigator.pop(_dialogContext!);
  }
}
