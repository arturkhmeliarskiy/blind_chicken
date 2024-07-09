import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item_data_model.freezed.dart';

@freezed
class MenuItemDataModel with _$MenuItemDataModel {
  const MenuItemDataModel._();
  factory MenuItemDataModel({
    required int idParent,
    required int id,
    required String url,
    required String name,
    required int sub,
    required int title,
    required int brand,
    required int bold,
  }) = _MenuItemDataModel;
}
