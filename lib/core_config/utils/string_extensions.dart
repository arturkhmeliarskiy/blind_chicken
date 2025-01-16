import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkify/linkify.dart';

extension StringExtensionsNull on String? {
  bool get isNullOrEmpty {
    if (_isNull(this)) return true;
    if (this == '') return true;
    return false;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }
}

extension StringExtensions on String {
  String removeTrailingZeros() {
    return replaceAll(RegExp(r'([.]*0+)(?!.*\d)'), '');
  }

  /// Удаление спец символов (кроме запятых, точек, букв и цифр), и замена точек на запятые,
  /// и удаление пробелов в начале и конце строки
  String get extraTrim {
    String cleaned = replaceAll(RegExp(r'[^\p{L}\p{N}\s,\.]', unicode: true), '').replaceAll(',', '.');
    cleaned = cleaned.trim();
    return cleaned;
  }

  String toFirstUpperCase() {
    if (this == '' || length < 2) return this;
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String _removeExtraLineBreaks({int? maxLineBreaks}) {
    maxLineBreaks = maxLineBreaks ?? 2;

    String cleanedText = replaceAll(RegExp('\n{3,}'), '\n\n');
    cleanedText = cleanedText.replaceAll(RegExp('\n{${maxLineBreaks + 1},}'), '\n\n');

    return cleanedText;
  }

  String removeExtraLineBreaksIfMoreTwo() {
    if (contains('\n\n\n')) {
      return _removeExtraLineBreaks();
    } else {
      return this;
    }
  }

  String? tryExtractLinkByRexExp() {
    final urlRegExp = RegExp(
        r'((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?');
    final urlMatches = urlRegExp.allMatches(this);
    List<String> urls = urlMatches.map((urlMatch) => substring(urlMatch.start, urlMatch.end)).toList();
    if (urls.isNotEmpty) return urls.first;
    return null;
  }

  String? tryExtractLink() {
    var elements = linkify(
      this,
      options: const LinkifyOptions(
        humanize: false,
      ),
    );
    for (var e in elements) {
      if (e is LinkableElement) {
        return e.url;
      }
    }
    return null;
  }

  double toDouble() => double.tryParse(replaceAll(',', '.')) ?? 0;

  // 0x41 is Letter A
  // 0x1F1E6 is Regional Indicator Symbol Letter A
  // Example :
  // firstLetter U => 20 + 0x1F1E6
  // secondLetter S => 18 + 0x1F1E6
  // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
  /// IMPORTANT length must be 2
  String toCountryCodeToEmoji() {
    if (length == 2) {
      final int firstLetter = toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
      final int secondLetter = toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
      return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
    }
    return this;
  }

  String toFlagAsset() {
    Map<String, String> flags = {
      'zho': Assets.images.flag.zho.path,
      'eng': Assets.images.flag.eng.path,
      'fra': Assets.images.flag.fra.path,
      'ind': Assets.images.flag.ind.path,
      'kaz': Assets.images.flag.kaz.path,
      'kir': Assets.images.flag.kir.path,
      'por': Assets.images.flag.por.path,
      'rus': Assets.images.flag.rus.path,
      'spa': Assets.images.flag.spa.path,
      'vie': Assets.images.flag.vie.path,
    };
    final flag = toLowerCase();

    if (flags.containsKey(flag)) {
      return flags[flag].toString();
    }

    return Assets.images.flag.rus.path;
  }

  Color toColor() {
    final hex = toUpperCase().replaceAll('#', '');
    if (hex.isEmpty) return AppColors.darkText;
    String withOpacity;
    switch (hex.length) {
      case 6:
        withOpacity = 'FF$hex';
        break;
      case 3:
        final first = hex[0];
        final second = hex[1];
        final third = hex[2];
        withOpacity = 'FF$first$first$second$second$third$third';
        break;
      default:
        withOpacity = hex;
    }
    return Color(int.parse(withOpacity, radix: 16));
  }
}

String concatFromList(List<String>? myList) {
  return (myList ?? []).join(', ');
}

String formatNumber(double number) {
  NumberFormat numberFormat = NumberFormat.decimalPatternDigits();
  return numberFormat.format(number);
}

List<String> getDeepLinkSegments(String deepLinkUrl) {
  Uri uri = Uri.parse(deepLinkUrl);
  List<String> segments = uri.pathSegments;
  return segments;
}

bool _isNull(Object? o) {
  if (o == null) return true;
  return false;
}
