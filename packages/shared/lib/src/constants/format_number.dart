import 'package:intl/intl.dart';

class FormatNumber {
  static String formattedNumber(int value) {
    return NumberFormat('#  ##  000').format(value);
  }
}

extension StringNumberExtension on String {
  String spaceSeparateNumbers() {
    final result =
        replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ');
    return result;
  }
}
