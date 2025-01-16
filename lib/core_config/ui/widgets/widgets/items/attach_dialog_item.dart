import 'package:flutter/material.dart';

class AttachDialogItem extends StatelessWidget {
  const AttachDialogItem({super.key, this.color, this.icon, this.onPressed, this.text});
  final IconData? icon;
  final Color? color;
  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, size: 30.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(
              text!,
            ),
          ),
        ],
      ),
    );
  }
}
