import 'package:html/parser.dart';

class TextService {
  static String trimTextTheEnd(
    String value,
    int start,
    int end,
  ) {
    String result = '';
    result = value.substring(start, end);
    return result;
  }

  static String parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final String parsedString = parse(document.body?.text ?? '').documentElement?.text ?? '';

    return parsedString;
  }
}
