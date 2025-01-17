import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_response.freezed.dart';
part 'menu_response.g.dart';

@freezed
class MenuResponse with _$MenuResponse {
  const MenuResponse._();
  factory MenuResponse({
    List<MenuItemResponse>? items,
    String? errorMessage,
  }) = _MenuResponse;
  factory MenuResponse.fromJson(Map<String, dynamic> json) => _$MenuResponseFromJson(json);
}
