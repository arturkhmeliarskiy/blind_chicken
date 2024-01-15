import 'package:flutter/material.dart';

class BlindChickenCheckWordStyle {
  static List<TextSpan> textToWords(
    String text,
    BuildContext contextWord, {
    TextStyle? textStyle1,
    TextStyle? textStyle2,
  }) {
    List<TextSpan> listWidget = [];

    var re = RegExp(r"\w+|\s+|[^\s\w]+");
    final words = re.allMatches(text).map((m) => m.group(0) ?? '').toList();
    for (int i = 0; i < words.length; i++) {
      if (!RegExp(r'^[%A-Za-z0-9_.+-]+$').hasMatch(words[i])) {
        listWidget.add(
          TextSpan(
            text: words[i],
            style: textStyle1 ?? Theme.of(contextWord).textTheme.displayMedium,
          ),
        );
      } else {
        listWidget.add(
          TextSpan(
            text: words[i],
            style: textStyle2 ?? Theme.of(contextWord).textTheme.displayMedium,
          ),
        );
      }
    }
    return listWidget;
  }
}
