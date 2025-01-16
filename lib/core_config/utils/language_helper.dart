import 'dart:io';
import 'dart:ui';
import 'package:blind_chicken/app/bloc/app_bloc.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/localization/l10n/generated/l10n.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:intl/intl.dart';

class LanguageHelper {
  static AppLocalization localization = AppLocalization.current;

  static final String _defaultLanguage = 'ru';//Env.defaultLanguage;

  //static final String _defaultLanguage = 'en';

  static const _langMap = {
    'en': 'eng',
    'ru': 'rus',
    'es': 'spa',
    'fr': 'fra',
    'id': 'ind',
    'pt': 'por',
    'zh-CN': 'zho',
    'vi': 'vie',
    'kk': 'kaz',
    'ky': 'kir',
    'uz': 'uzb',
  };

  ///Возвращает локаль по текущему языку на устройстве, исключение zh-CN
  static String getCurrentDeviceLocale() {
    logging(_langMap[Platform.localeName.substring(0, 2)], stackTrace: StackTrace.current);
    return _langMap[Platform.localeName.substring(0, 2)] ?? fromLocale(_defaultLanguage);
  }

  static String fromLocale(String languageCode) {
    return _langMap[languageCode] ?? fromLocale(_defaultLanguage);
  }

  static Locale toLocale(String languageCode) {
    for (var i = 0; i < _langMap.values.length; i++) {
      logging('languageCode:$languageCode', stackTrace: StackTrace.current);
      logging('{_langMap.values.elementAt(i):${_langMap.values.elementAt(i)}', stackTrace: StackTrace.current);
      if (_langMap.values.elementAt(i) == languageCode) {
        return Locale(_langMap.keys.elementAt(i));
      }
    }

    return Locale(_defaultLanguage);
  }

  static String getCurrentLocaleToBackend() {
    String string = LanguageHelper.fromLocale(Intl.getCurrentLocale());
    //String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    //logging('Current locale is $string', stackTrace: StackTrace.current);
    return string;
  }

  static Future<void> setCurrentLocaleFromBackend(String languageCode) async {
    Locale locale = toLocale(languageCode);
    await setCurrentLocale(locale.languageCode);
  }

  static String getCurrentLocale() {
    return Intl.getCurrentLocale();
  }

  static Future<void> setCurrentLocale(String languageCode) async {
    await AppLocalization.load(Locale.fromSubtags(languageCode: languageCode));
  }

  static Future<void> setLocaleToDefault() async {
    AppBloc appBloc = Locator.injection();
    //appBloc.add(AppEvent.switchLocale(toLocale(_defaultLanguage)));
    appBloc.add(AppEvent.switchLocale(toLocale(getCurrentDeviceLocale())));
  }
}
