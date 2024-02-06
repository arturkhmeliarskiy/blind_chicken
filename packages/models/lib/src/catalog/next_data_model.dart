import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_data_model.freezed.dart';

@freezed
class NextDataModel with _$NextDataModel {
  const NextDataModel._();
  factory NextDataModel({
    required String frames,
    required String sunglasses,
    required String skiMasks,
  }) = _NextDataModel;
}
