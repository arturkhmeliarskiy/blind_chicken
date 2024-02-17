import 'package:freezed_annotation/freezed_annotation.dart';

part 'breacumb_product_response.freezed.dart';
part 'breacumb_product_response.g.dart';

@freezed
class BreacumbProductResponse with _$BreacumbProductResponse {
  const BreacumbProductResponse._();
  factory BreacumbProductResponse({
    String? name,
    String? value,
  }) = _BreacumbProductResponse;
  factory BreacumbProductResponse.fromJson(Map<String, dynamic> json) =>
      _$BreacumbProductResponseFromJson(json);
}
