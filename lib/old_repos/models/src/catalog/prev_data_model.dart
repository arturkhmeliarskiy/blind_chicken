import 'package:freezed_annotation/freezed_annotation.dart';

part 'prev_data_model.freezed.dart';

@freezed
class PrevDataModel with _$PrevDataModel {
  const PrevDataModel._();
  factory PrevDataModel({
    required String optics,
  }) = _PrevDataModel;
}
