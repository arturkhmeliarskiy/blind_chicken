import 'package:freezed_annotation/freezed_annotation.dart';

part 'prev_response.freezed.dart';
part 'prev_response.g.dart';

@freezed
class PrevResponse with _$PrevResponse {
  const PrevResponse._();
  factory PrevResponse({
    @JsonKey(name: 'Оптика') String? optics,
  }) = _PrevResponse;
  factory PrevResponse.fromJson(Map<String, dynamic> json) => _$PrevResponseFromJson(json);
}
