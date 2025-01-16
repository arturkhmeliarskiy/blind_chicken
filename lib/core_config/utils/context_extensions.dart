import 'dart:io';

import 'package:blind_chicken/core_config/localization/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ContextExtensions on BuildContext {
  AppLocalization get localizations => AppLocalization.current;

  void sendEvent<B extends Bloc>(dynamic event) {
    read<B>().add(event);
  }

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool isLightTheme() {
    final ThemeData theme = Theme.of(this);
    final bool isLight = theme.brightness == Brightness.light;
    return isLight;
  }

  bool isDarkTheme() {
    final ThemeData theme = Theme.of(this);
    final bool isDark = theme.brightness == Brightness.dark;
    return isDark;
  }

  bool get isMaterial {
    if (Platform.isIOS || Platform.isMacOS) return false;
    return true;
  }

  bool get isIos {
    return !isMaterial;
  }

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ///По возможности сбрасывает фокус с тестовых полей и закрывает клавиатуру
  void unFocus() {
    try {
      FocusManager.instance.primaryFocus?.unfocus();
    } finally {}
    try {
      FocusScope.of(this).unfocus();
    } finally {}
    try {
      WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
    } finally {}
    try {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    } finally {}
  }
}
