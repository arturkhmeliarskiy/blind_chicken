import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge_operation_info_response.freezed.dart';
part 'badge_operation_info_response.g.dart';

@freezed
class BadgeOperationInfoResponse with _$BadgeOperationInfoResponse {
  const BadgeOperationInfoResponse._();
  factory BadgeOperationInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    int? news,
    int? media,
    int? notice,
    int? total,
  }) = _BadgeOperationInfoResponse;
  factory BadgeOperationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BadgeOperationInfoResponseFromJson(json);
}
