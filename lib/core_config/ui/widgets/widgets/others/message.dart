import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message(
    this.message, {
    this.isError = false,
    super.key,
  });

  final String message;
  final bool isError;

  @override
  Widget build(BuildContext context) => Center(
        child: IntrinsicWidth(
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: context.mediaQuery.size.width * 0.6),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                color: isError ? context.colorScheme.error : context.colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                message,
                style: AppTextStyles.bodySmall(isError ? context.colorScheme.onError : context.colorScheme.onSecondary),
              ),
            ),
          ),
        ),
      );
}
