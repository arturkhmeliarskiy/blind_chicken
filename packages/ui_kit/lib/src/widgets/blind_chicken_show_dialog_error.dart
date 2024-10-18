import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenShowDialogError {
  BuildContext? _dialogContext;

  openShowDualog({
    required String errorMessage,
    required BuildContext context,
    required VoidCallback onRepeatRequest,
    VoidCallback? onCloseRequest,
    Widget? widget,
    bool isClose = false,
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
          onCloseRequest: onCloseRequest ??
              () {
                Navigator.pop(_dialogContext!);
              },
          widget: widget,
          isClose: isClose,
        );
      },
    );
  }

  closeShowDialog({BuildContext? context}) {
    Navigator.pop(_dialogContext!);
  }
}
