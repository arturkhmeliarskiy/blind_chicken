import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'menu_data_model.freezed.dart';

@freezed
class MenuDataModel with _$MenuDataModel {
  const MenuDataModel._();
  factory MenuDataModel({
    required List<MenuItemDataModel> items,
    required String errorMessage,
  }) = _MenuDataModel;
}
