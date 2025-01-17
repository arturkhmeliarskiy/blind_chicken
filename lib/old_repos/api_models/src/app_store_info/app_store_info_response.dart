import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_store_info_response.freezed.dart';
part 'app_store_info_response.g.dart';

@freezed
class AppStoreInfoResponse with _$AppStoreInfoResponse {
  const AppStoreInfoResponse._();
  factory AppStoreInfoResponse({
    String? appStroreVersion,
    String? errorMessage,
  }) = _AppStoreInfoResponse;
  factory AppStoreInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$AppStoreInfoResponseFromJson(json);
}
