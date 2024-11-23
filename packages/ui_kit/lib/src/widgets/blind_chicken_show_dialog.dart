import 'package:flutter/material.dart';

class BlindChickenShowDialog {
  BuildContext? _dialogContext;

  openShowDualog({
    required BuildContext context,
    required Widget widget,
  }) {
    showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false,
      pageBuilder: (context, __, ___) {
        _dialogContext = context;
        return widget;
      },
    );
  }

  closeShowDialog({BuildContext? context}) {
    Navigator.pop(_dialogContext!);
  }
}
