import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    required this.richTextData,
    Key? key,
  }) : super(key: key);

  final RichTextData richTextData;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = Theme.of(context).textTheme.displayMedium;

    final widgets = <InlineSpan>[];

    for (final rt in richTextData.textWithTags) {
      widgets.add(
        TextSpan(
          text: rt.text,
          style: rt.style ?? defaultTextStyle,
        ),
      );
    }

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: widgets,
      ),
    );
  }
}

RichTextData textTransformation({
  required BuildContext context,
  required String text,
  Color? boldAndItalicTextColor,
  Color? boldTextColor,
  Color? italicTextColor,
  Color? underlineTextColor,
}) {
  final regex = RegExp(r'((?:<([A-Za-z])>)+)(.*?)(?:<\/[A-Za-z]>)+');

  final matches = regex.allMatches(text);

  final richText = RichTextData(textWithTags: []);

  var currentIndex = 0;

  for (final match in matches) {
    final beforeText = text.substring(currentIndex, match.start);

    if (beforeText.isNotEmpty) {
      richText.textWithTags.add(
        TextWithTag(
          text: beforeText,
        ),
      );
    }

    final tags = match.group(1);

    if (tags != null) {
      var newTextStyle = Theme.of(context).textTheme.displayMedium;

      if (tags.contains('b')) {
        newTextStyle = newTextStyle?.copyWith(
          fontWeight: FontWeight.bold,
          color: boldAndItalicTextColor,
        );
      }

      richText.textWithTags.add(
        TextWithTag(
          text: match.group(3).toString(),
          style: newTextStyle,
        ),
      );
    }

    currentIndex = match.end;
  }

  final remainingText = text.substring(currentIndex);

  if (remainingText.isNotEmpty) {
    richText.textWithTags.add(
      TextWithTag(
        text: remainingText,
      ),
    );
  }

  return richText;
}

class TextWithTag {
  TextWithTag({
    this.text,
    this.style,
  });

  final String? text;

  TextStyle? style;
}

class RichTextData {
  RichTextData({
    required this.textWithTags,
  });

  final List<TextWithTag> textWithTags;
}
