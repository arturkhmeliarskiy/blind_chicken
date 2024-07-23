import 'package:api_models/src/store_version_app/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_version_app_response.freezed.dart';
part 'store_version_app_response.g.dart';

@freezed
class StoreVersionAppResponse with _$StoreVersionAppResponse {
  const StoreVersionAppResponse._();
  factory StoreVersionAppResponse({
    String? r,
    String? e,
    StoreVersionAppDataResponse? version,
  }) = _StoreVersionAppResponse;
  factory StoreVersionAppResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreVersionAppResponseFromJson(json);
}
