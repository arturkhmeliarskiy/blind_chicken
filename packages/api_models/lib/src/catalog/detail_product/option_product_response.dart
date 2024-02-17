import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_product_response.freezed.dart';
part 'option_product_response.g.dart';

@freezed
class OptionProductResponse with _$OptionProductResponse {
  const OptionProductResponse._();
  factory OptionProductResponse({
    @JsonKey(name: 'c') String? c,
    @JsonKey(name: 'n') String? n,
    @JsonKey(name: 'f') String? f,
    @JsonKey(name: 'b') String? b,
    @JsonKey(name: 'ne') String? ne,
    @JsonKey(name: 'pr') String? pr,
    @JsonKey(name: 'u') String? u,
    @JsonKey(name: 'g') String? g,
    @JsonKey(name: 'ct') String? ct,
  }) = _OptionProductResponse;
  factory OptionProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OptionProductResponseFromJson(json);
}
