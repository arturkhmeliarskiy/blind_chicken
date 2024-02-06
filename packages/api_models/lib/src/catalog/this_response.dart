import 'package:freezed_annotation/freezed_annotation.dart';

part 'this_response.freezed.dart';
part 'this_response.g.dart';

@freezed
class ThisResponse with _$ThisResponse {
  const ThisResponse._();
  factory ThisResponse({
    @JsonKey(name: 'Очки') String? glasses,
  }) = _ThisResponse;
  factory ThisResponse.fromJson(Map<String, dynamic> json) => _$ThisResponseFromJson(json);
}
