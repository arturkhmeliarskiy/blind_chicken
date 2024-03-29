import 'package:models/models.dart';

class UpdateDataService {
  int? _selectedIndexGender;
  bool? _isOpenUpdateModalWindow;
  List<PaymentItemDataModel>? _payments;
  List<BoutiqueDataModel>? _boutiques;

  int get selectedIndexGender {
    return _selectedIndexGender ?? 1;
  }

  set selectedIndexGender(int value) {
    _selectedIndexGender = value;
  }

  bool get isOpenUpdateModalWindow {
    return _isOpenUpdateModalWindow ?? true;
  }

  set isOpenUpdateModalWindow(bool value) {
    _isOpenUpdateModalWindow = value;
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
