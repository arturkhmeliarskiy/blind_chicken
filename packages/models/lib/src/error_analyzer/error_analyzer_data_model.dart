import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_analyzer_data_model.freezed.dart';

@freezed
class ErrorAnalyzerDataModel with _$ErrorAnalyzerDataModel {
  const ErrorAnalyzerDataModel._();
  factory ErrorAnalyzerDataModel({
    required String r,
    required String errorMessage,
  }) = _ErrorAnalyzerDataModel;
}
