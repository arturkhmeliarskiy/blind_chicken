import 'package:flutter/material.dart';

class ProfileButtonItem extends StatelessWidget {
  const ProfileButtonItem({
    super.key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    required this.iconData,
    this.cardColor,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final IconData iconData;
  final Color? iconColor;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed.call();
      },
      child: Card(
        elevation: 1,
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      iconData,
                      color: iconColor,
                    ),
                  ),
                  Text(
                    text,
                    style: textStyle,
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: iconColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
