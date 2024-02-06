import 'package:freezed_annotation/freezed_annotation.dart';

part 'v_response.freezed.dart';
part 'v_response.g.dart';

@freezed
class VResponse with _$VResponse {
  const VResponse._();
  factory VResponse({
    String? n,
    String? id,
  }) = _VResponse;
  factory VResponse.fromJson(Map<String, dynamic> json) => _$VResponseFromJson(json);
}
