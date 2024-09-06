import 'package:models/models.dart';

class FilterService {
  FilterNotifcationDataModel converterNotificationInfo({
    required String value,
  }) {
    List<FilterNotifcationItemDataModel> filter = [];
    List<FilterNotifcationItemDataModel> fullFilter = [];
    final info = value.split('?');
    final url = info[0];
    if (info.length > 1) {
      final filters = info[1].split('&');
      for (int i = 0; i < filters.length; i++) {
        final result3 = filters[i].split('=');
        filter.add(
          FilterNotifcationItemDataModel(
            typeFilter: result3[0],
            value: result3[1],
          ),
        );

        if (filters[i].contains(';')) {
          final result1 = filters[i].split('=');
          final result2 = result1[1].split(';');
          for (int j = 0; j < result2.length; j++) {
            fullFilter.add(
              FilterNotifcationItemDataModel(
                typeFilter: result1[0],
                value: result2[j],
              ),
            );
          }
        } else {
          final result = filters[i].split('=');
          fullFilter.add(
            FilterNotifcationItemDataModel(
              typeFilter: result[0],
              value: result[1],
            ),
          );
        }
      }
    }

    return FilterNotifcationDataModel(
      url: url,
      filter: filter,
      fullFilter: fullFilter,
    );
  }
}
