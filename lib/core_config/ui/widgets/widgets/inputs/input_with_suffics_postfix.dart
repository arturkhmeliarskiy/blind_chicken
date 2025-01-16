import 'package:blind_chicken/core_config/ui/widgets/widgets/inputs/basic_input.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';


class InputWithSuffixPostfix extends StatefulWidget {
  const InputWithSuffixPostfix({
    super.key,
    this.onTapPrefixButton,
    this.onTapSuffixButton,
    this.onChangeText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.prefixWidget,
    this.suffixWidget,
    this.controller,
  });

  final VoidCallback? onTapPrefixButton;
  final VoidCallback? onTapSuffixButton;
  final Function(String)? onChangeText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextEditingController? controller;

  @override
  State<InputWithSuffixPostfix> createState() => _InputWithSuffixPostfixState();
}

class _InputWithSuffixPostfixState extends State<InputWithSuffixPostfix> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.prefixWidget ??
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: context.colorScheme.primary),
                ),
                child: IconButton.outlined(
                  onPressed: () {
                    widget.onTapPrefixButton?.call();
                  },
                  icon: widget.prefixIcon ?? const Icon(Icons.camera_alt),
                ),
              ),
            ),
        Expanded(
          child: BasicInput(
            controller: widget.controller,
            onChanged: widget.onChangeText,
            textStyle: const TextStyle(),
            hintStyle: const TextStyle(),
            hint: widget.hintText ?? 'Вежливо 😇',
            minLines: 1,
            maxLines: 7,
          ),
        ),
        widget.suffixWidget ??
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: context.colorScheme.primary),
                ),
                child: IconButton.outlined(
                  onPressed: () {
                    widget.onTapSuffixButton?.call();
                    widget.controller?.clear();
                  },
                  icon: widget.suffixIcon ?? const Icon(Icons.send),
                ),
              ),
            ),
      ],
    );
  }
}
