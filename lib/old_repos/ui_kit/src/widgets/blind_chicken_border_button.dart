import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BlindChickenBorderButton extends StatefulWidget {
  const BlindChickenBorderButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  State<BlindChickenBorderButton> createState() => _BlindChickenBorderButtonState();
}

class _BlindChickenBorderButtonState extends State<BlindChickenBorderButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 7,
          bottom: 7,
          left: 10.5,
          right: 10.5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(),
        ),
        child: RichText(
          text: TextSpan(
            children: BlindChickenCheckWordStyle.textToWords(
              widget.title,
              context,
            ),
          ),
        ),
      ),
    );
  }
}
