import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:flutter/cupertino.dart';


class NotFoundButton extends StatelessWidget {
  const NotFoundButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      minSize: 0,
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            text,
            style: AppTextStyles.textWithUnderline(const Color(0xFF121212)),
          ),
        ),
      ),
    );
  }
}
