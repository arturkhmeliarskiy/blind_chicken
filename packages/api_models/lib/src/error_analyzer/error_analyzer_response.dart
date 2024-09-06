import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_analyzer_response.freezed.dart';
part 'error_analyzer_response.g.dart';

@freezed
class ErrorAnalyzerResponse with _$ErrorAnalyzerResponse {
  const ErrorAnalyzerResponse._();
  factory ErrorAnalyzerResponse({
    String? r,
    @JsonKey(name: 'e') String? errorMessage,
  }) = _ErrorAnalyzerResponse;
  factory ErrorAnalyzerResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorAnalyzerResponseFromJson(json);
}
