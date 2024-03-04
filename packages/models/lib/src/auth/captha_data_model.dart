import 'package:freezed_annotation/freezed_annotation.dart';

part 'captha_data_model.freezed.dart';

@freezed
class CapthaDataModel with _$CapthaDataModel {
  const CapthaDataModel._();
  factory CapthaDataModel({
    required String img,
    required String code,
  }) = _CapthaDataModel;
}
