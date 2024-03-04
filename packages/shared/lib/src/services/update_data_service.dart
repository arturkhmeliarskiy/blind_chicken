import 'package:models/models.dart';

class UpdateDataService {
  String? _selectedIndexGender;
  List<PaymentItemDataModel>? _payments;
  List<BoutiqueDataModel>? _boutiques;

  String get selectedIndexGender {
    return _selectedIndexGender ?? '';
  }

  set selectedIndexGender(String value) {
    _selectedIndexGender = value;
  }

  List<PaymentItemDataModel> get payments {
    return _payments ?? [];
  }

  set payments(List<PaymentItemDataModel> value) {
    _payments = value;
  }

  List<BoutiqueDataModel> get boutiques {
    return _boutiques ?? [];
  }

  set boutiques(List<BoutiqueDataModel> name) {
    _boutiques = name;
  }
}
