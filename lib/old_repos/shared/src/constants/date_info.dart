import 'package:blind_chicken/old_repos/shared/shared.dart';

class DateInfo {
  static String dateFormat(String value) {
    DateTime date = DateTime.parse(value);
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime yesterday = DateTime(now.year, now.month, now.day - 1);
    DateTime dateToCheck = DateTime(date.year, date.month, date.day);
    String hour = date.hour.toString().padLeft(2, "0");
    String minute = date.minute.toString().padLeft(2, "0");
    String day = date.day.toString().padLeft(2, "0");
    String month = date.month.toString().padLeft(2, "0");
    String result = '';

    if (dateToCheck == today) {
      result = 'сегодня в $hour:$minute';
    } else if (dateToCheck == yesterday) {
      result = 'вчера в $hour:$minute';
    } else {
      if (date.year == today.year) {
        result = '${date.day} ${ConstatntsInfo().months[date.month - 1]} в $hour:$minute';
      } else {
        result = '$day.$month.${date.year} в $hour:$minute';
      }
    }

    return result;
  }
}
