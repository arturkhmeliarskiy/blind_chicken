class UpdateDataService {
  String? _selectedIndexGender;

  String get selectedIndexGender {
    return _selectedIndexGender ?? '';
  }

  set selectedIndexGender(String value) {
    _selectedIndexGender = value;
  }
}
