import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item_response.freezed.dart';
part 'menu_item_response.g.dart';

@freezed
class MenuItemResponse with _$MenuItemResponse {
  const MenuItemResponse._();
  factory MenuItemResponse({
    @JsonKey(name: 'id_parent') String? idParent,
    String? id,
    String? url,
    String? name,
    int? title,
    int? sub,
    int? brand,
    int? bold,
  }) = _MenuItemResponse;
  factory MenuItemResponse.fromJson(Map<String, dynamic> json) => _$MenuItemResponseFromJson(json);
}
