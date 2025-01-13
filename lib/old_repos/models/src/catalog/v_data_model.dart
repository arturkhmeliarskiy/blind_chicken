import 'package:freezed_annotation/freezed_annotation.dart';

part 'v_data_model.freezed.dart';

@freezed
class VDataModel with _$VDataModel {
  const VDataModel._();
  factory VDataModel({
    required String n,
    required String id,
  }) = _VDataModel;
}
