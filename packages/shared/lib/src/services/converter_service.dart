import 'dart:convert';
import 'package:crypto/crypto.dart';

class ConverterService {
  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  static int roundUpAbsolute(double number) {
    return number.isNegative ? number.floor() : number.ceil();
  }
}
