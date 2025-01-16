
import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';


class CloseKeyboardByTap extends StatelessWidget {
  const CloseKeyboardByTap({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (Env.enableDebugOverlay) return child;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          context.unFocus();
        }
      },
      child: child,
    );
  }
}
