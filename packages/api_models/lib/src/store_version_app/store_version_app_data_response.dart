import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_version_app_data_response.freezed.dart';
part 'store_version_app_data_response.g.dart';

@freezed
class StoreVersionAppDataResponse with _$StoreVersionAppDataResponse {
  const StoreVersionAppDataResponse._();
  factory StoreVersionAppDataResponse({
    @JsonKey(name: 'iOS') String? ios,
    @JsonKey(name: 'Android') String? android,
  }) = _StoreVersionAppDataResponse;
  factory StoreVersionAppDataResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreVersionAppDataResponseFromJson(json);
}
