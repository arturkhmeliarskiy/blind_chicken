import 'package:freezed_annotation/freezed_annotation.dart';

part 'captha_response.freezed.dart';
part 'captha_response.g.dart';

@freezed
class CapthaResponse with _$CapthaResponse {
  const CapthaResponse._();
  factory CapthaResponse({
    String? img,
    String? code,
  }) = _CapthaResponse;
  factory CapthaResponse.fromJson(Map<String, dynamic> json) => _$CapthaResponseFromJson(json);
}
