import 'dart:async';

import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class AppTextController extends TextEditingController {
  AppTextController({
    super.text,
    String? mask,
    Map<String, RegExp>? filter,
    this.formattedText,
    this.autoValidate = false,
    this.enabled = true,
    this.label,
    this.hintText,
    this.error,
    this.validator,
    this.keyboardType = TextInputType.text,
    FocusNode? focusNode,
  })  : _mask = mask,
        focusNode = focusNode ?? FocusNode() {
    if (mask != null) {
      initMask(mask: mask, filter: filter);
    }
  }

  Timer? debounceTimer;

  bool enabled;
  String? label;
  String? hintText;
  String? formattedText;
  String? error;
  String? Function(String? value)? validator;

  @override
  String get text {
    return focusNode.hasFocus ? value.text : (formattedText ?? value.text);
  }

  String get unit => (formattedText ?? '').split(' ').length > 1 ? formattedText!.split(' ').last : '';

  int get lengthOfUnit => (formattedText ?? '').split(' ').length;

  String get realValue => value.text;

  String get _valueText => value.text.toString();

  String get valueString => _valueText.trim();

  double get valueDouble => double.tryParse(valueString.replaceAll(',', '.')) ?? 0;

  int get valueInt => valueDouble.toInt();

  bool autoValidate;

  AutovalidateMode get autoValidateMode =>
      autoValidate ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled;

  FocusNode focusNode;

  final String? _mask;

  String? get mask => _mask;
  MaskTextInputFormatter? _maskFormatter;

  MaskTextInputFormatter get maskFormatter => _maskFormatter!;
  TextInputType keyboardType;

  String get masked => text;

  String get unmasked => _maskFormatter?.getUnmaskedText() ?? text;

  void initMask({
    String? mask,
    Map<String, RegExp>? filter,
  }) {
    _maskFormatter = MaskTextInputFormatter(mask: mask, filter: filter);
  }

  void updateUnit() {
    formattedText = '${value.text} $unit';
    notifyListeners();
  }

  void updateMask({String? mask, Map<String, RegExp>? filter}) {
    if (_maskFormatter == null) initMask(mask: mask, filter: filter);
    value = maskFormatter.updateMask(mask: mask, filter: filter);
  }

  void clearMask() {
    value = maskFormatter.updateMask(mask: '');
  }

  void requestFocus() {
    focusNode.requestFocus();
  }
}

const keyboardWithDecimal = TextInputType.numberWithOptions(
  decimal: true,
  //signed: false,
);

Timer? _debounce;

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.suffix,
    this.readOnly = false,
    this.autofocus = false,
    this.textStyle,
    this.inputFormatters,
    this.required = false,
    this.maxLength = -1,
    this.minLines,
    this.maxLines = 1,
    this.validator,
    this.onSave,
    this.focusChange,
    this.labelStyle,
    this.hintStyle,
    this.height,
    this.onChanged,
    this.onTap,
    this.disableErrorText = false,
    this.underlineBorder = true,
    this.onFieldSubmitted,
    this.cursorPositionEnd = true,
    this.enableRightPadding = false,
    this.debounceDuration,
    this.textInputAction,
    this.padding,
    this.fillColor,
    this.shouldAutoAppendUnit = false,
  });

  final TextStyle? textStyle;
  final AppTextController controller;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool readOnly;
  final bool required;
  final bool disableErrorText;
  final bool autofocus;
  final bool underlineBorder;
  final bool enableRightPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool shouldAutoAppendUnit;

  final int maxLength;
  final int maxLines;
  final int? minLines;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final double? height;

  final String? Function(String? value)? validator;

  final VoidCallback? onSave;
  final ValueChanged<bool>? focusChange;
  final VoidCallback? onTap;

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final bool cursorPositionEnd;
  final Duration? debounceDuration;

  final TextInputAction? textInputAction;
  final EdgeInsets? padding;
  final Color? fillColor;

  void edit(String? val) {
    onSave?.call();
  }

  @override
  Widget build(BuildContext context) {
    //final systemBrightness = SchedulerBinding.instance.window.platformBrightness ?? Brightness.light; -- Внесены правки, потому оставил запаску
    final systemBrightness = context.colorScheme.brightness;
    final isNumberKeyboard = keyboardType == TextInputType.number || keyboardType == keyboardWithDecimal;
    final resolvedInputFormatters = inputFormatters ??
        (isNumberKeyboard
            ? [
                //4.12
                FilteringTextInputFormatter.allow(RegExp(r'(^\d*[.,]?\d{0,3})')),

                //4554.1231321
                //FilteringTextInputFormatter.allow(
                //  RegExp(r'(^\d*\.?\d*$|^\d*,?\d*$)'),
                //  replacementString: controller.text,
                //)
              ]
            : null);

    String requiredSpace = required ? '  ' : '';
    if (cursorPositionEnd && !readOnly) {
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
    }

    Widget label() {
      TextStyle style = labelStyle ?? AppTextStyles.bodyMedium(AppColors.grey43);
      return Stack(
        children: [
          Text(
            controller.label.toString() + requiredSpace,
            style: style,
          ),
          if (required)
            Positioned(
              right: 0,
              child: Text(
                '*',
                style: controller.text.isEmpty ? style.copyWith(color: AppColors.red) : style,
              ),
            ),
        ],
      );
    }

    var textField = TextFormField(
      textInputAction: textInputAction,
      onTap: onTap,
      autofocus: autofocus,
      onEditingComplete: onSave,
      onFieldSubmitted: onFieldSubmitted ?? edit,
      onSaved: edit,
      controller: controller,
      readOnly: readOnly,
      inputFormatters: resolvedInputFormatters,
      validator: validator ?? controller.validator,
      autovalidateMode: controller.autoValidateMode,
      focusNode: readOnly ? null : controller.focusNode,
      enabled: controller.enabled,
      style: textStyle ?? AppTextStyles.bodyMedium(AppColors.black),
      keyboardAppearance: systemBrightness,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,
      //maxLength: maxLength,
      cursorColor: AppColors.primary,
      textCapitalization: TextCapitalization.sentences,

      onChanged: (value) {
        if (maxLength > 0) {
          if (value.toString().length > maxLength) {
            controller.text = value.toString().substring(0, maxLength);
            //if(cursorPositionEnd){
            //  controller.selection = TextSelection.fromPosition(TextPosition(offset: maxLength));
            //}
          }
        }
        if (onChanged != null) {
          if (debounceDuration != null) {
            if (_debounce?.isActive ?? false) _debounce?.cancel();
            _debounce = Timer(debounceDuration!, () {
              onChanged?.call(value);
            });

            //final duration = debounceDuration ?? const Duration();
            //controller.debounceTimer = Timer(duration, () => onChanged?.call(value));
          } else {
            onChanged?.call(value);
          }
        }
      },
      decoration: InputDecoration(
        //contentPadding: const EdgeInsets.only(bottom: 6, top: 8),
        fillColor: fillColor,
        contentPadding: padding ??
            EdgeInsets.only(
              bottom: 8,
              top: 5,
              right: (enableRightPadding ? 20 : 0),
            ),
        // fillColor: Colors.red,
        // filled: true,
        suffixIcon: suffix,
        isDense: true,
        //labelText: controller.label,
        label: controller.label != null ? label() : null,
        floatingLabelBehavior: FloatingLabelBehavior.always,

        //labelStyle: labelStyle ?? AppTextStyles.textFieldLabel,
        error: disableErrorText != true && controller.error != null
            ? Row(
                children: [
                  Expanded(
                    child: Text(
                      controller.error ?? '',
                      style: AppTextStyles.labelMedium(
                        AppColors.red,
                      ),
                    ),
                  )
                ],
              )
            : null,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: underlineBorder ? AppColors.red : Colors.transparent,
            width: (underlineBorder ? 1.0 : 0.0),
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: (underlineBorder ? 1.8 : 0.0),
            color: underlineBorder ? AppColors.red : Colors.transparent,
            // width: 1.8,
          ),
        ),
        hintStyle: hintStyle ?? AppTextStyles.bodyMedium(AppColors.greyEA),
        hintText: controller.hintText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: (underlineBorder ? 1.0 : 0.0),
            color: underlineBorder ? AppColors.greyEA : Colors.transparent,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: (underlineBorder ? 1.0 : 0.0),
            color: underlineBorder ? AppColors.greyEA : Colors.transparent,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: (underlineBorder ? 1.0 : 0.0),
            color: underlineBorder ? (readOnly == false ? AppColors.primary : AppColors.greyEA) : Colors.transparent,
          ),
        ),
      ),
    );

    if (focusChange != null) {
      return Focus(
        child: textField,
        onFocusChange: (hasFocus) {
          if (hasFocus == false) {
            controller.focusNode.unfocus();
            if (shouldAutoAppendUnit) {
              controller.updateUnit();
            }
          }

          focusChange!.call(hasFocus);
        },
      );
    }

    return textField;

    // return Container(
    //   margin: const EdgeInsets.only(top:10),
    //   child: textField,
    //   //height: height ?? 51,
    // );
  }
}
