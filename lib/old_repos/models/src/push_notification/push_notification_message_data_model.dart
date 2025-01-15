import 'package:blind_chicken/old_repos/models/models.dart';

class PushNotificationMessageDataModel {
  final String section;
  final String idMessage;
  final String type;
  final String sort;
  final String uid;
  final FilterNotifcationDataModel filterNotifcation;
  final String codeProduct;
  final String idNews;

  PushNotificationMessageDataModel({
    required this.section,
    required this.idMessage,
    required this.type,
    required this.sort,
    required this.uid,
    required this.filterNotifcation,
    required this.codeProduct,
    required this.idNews,
  });
}
