import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:jiffy/jiffy.dart';

class DateInfo {
  static String dateFormat(String value) {
    DateTime date = DateTime.parse(value);
    Jiffy jiffy = Jiffy.parseFromDateTime(date);
    Jiffy jiffyNow = Jiffy.parseFromDateTime(DateTime.now());

    if (jiffy.isSame(jiffyNow, unit: Unit.day)) {
      int minutesDiff = jiffyNow.diff(jiffy, unit: Unit.minute).toInt();
      if (minutesDiff < 5) {
        return 'только что';
      } else if (minutesDiff < 60) {
        return '$minutesDiff ${decline(minutesDiff, ['минуту назад', 'минуты назад', 'минут назад'])}';
      }

      int hoursDiff = jiffyNow.diff(jiffy, unit: Unit.hour).toInt();
      if (hoursDiff < 24) {
        return '$hoursDiff ${decline(hoursDiff, ['час назад', 'часа назад', 'часов назад'])}';
      }
    } else {
      int daysDiff = jiffyNow.diff(jiffy, unit: Unit.day).abs().toInt();
      if (daysDiff == 0) {
        return 'вчера';
      } else if (daysDiff == 1) {
        return 'позавчера';
      } else if (daysDiff <= 6) {
        return '$daysDiff ${decline(daysDiff, ['день назад', 'дня назад', 'дней назад'])}';
      } else {
        return jiffy.format(pattern: 'dd.MM.yyyy в HH:mm');
      }
    }

    return jiffy.format(pattern: 'dd.MM.yyyy в HH:mm');
  }
}

String decline(int value, List<String> words) {
  if (value % 10 == 1 && value % 100 != 11) {
    return words[0];
  } else if (value % 10 >= 2 && value % 10 <= 4 && (value % 100 < 10 || value % 100 >= 20)) {
    return words[1];
  } else {
    return words[2];
  }
}
