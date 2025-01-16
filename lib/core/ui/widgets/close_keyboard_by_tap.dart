import 'package:flutter/material.dart';
import 'package:pimmer_app/core/utils/context_extensions.dart';
import 'package:pimmer_app/env.dart';

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
