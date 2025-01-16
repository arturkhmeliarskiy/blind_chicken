import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppSheet {
  const AppSheet({
    required this.children,
    this.disable = false,
    this.onCancelPressed,
  });

  final List<AppSheetAction> children;
  final bool disable;
  final VoidCallback? onCancelPressed;

  void show(BuildContext context) {
    if (disable) return;
    _showActionsCupertino(context);
  }

  void _showActionsCupertino(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: AppColors.white.withOpacity(0),
      elevation: 0,
      builder: (context) {
        return CupertinoTheme(
          data: const CupertinoThemeData(
            brightness: Brightness.light,
          ),
          child: CupertinoActionSheet(
            actions: children,
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                onCancelPressed?.call();
                Navigator.of(context).pop();
              },
              child: Text(
                context.localizations.cancel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppSheetAction extends StatelessWidget {
  const AppSheetAction({
    required this.text,
    this.onPressed,
    this.prefixImage,
    this.color,
    super.key,
  });

  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixImage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
      onPressed: () async {
        onPressed?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixImage != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: prefixImage,
            ),
          Text(
            text,
            style: TextStyle(
              color: color ?? AppColors.black,
              fontSize: (MediaQuery.of(context).copyWith().size.height <= 568 &&
                      MediaQuery.of(context).copyWith().size.height <= 320)
                  ? 15
                  : 20,
            ),
          ),
        ],
      ),
    );
  }
}
