import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_content_info_response.freezed.dart';
part 'check_content_info_response.g.dart';

@freezed
class CheckContentInfoResponse with _$CheckContentInfoResponse {
  const CheckContentInfoResponse._();
  factory CheckContentInfoResponse({
    @JsonKey(name: 'date_time') String? dateTime,
    List<String>? screens,
    String? r,
    String? e,
    String? errorMessage,
  }) = _CheckContentInfoResponse;
  factory CheckContentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckContentInfoResponseFromJson(json);
}
