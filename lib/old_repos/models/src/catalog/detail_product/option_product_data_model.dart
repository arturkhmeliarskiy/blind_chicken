import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_product_data_model.freezed.dart';

@freezed
class OptionProductDataModel with _$OptionProductDataModel {
  const OptionProductDataModel._();
  factory OptionProductDataModel({
    required String c,
    required String n,
    required String f,
    required String b,
    required String ne,
    required String pr,
    required String u,
    required String g,
    required String ct,
  }) = _OptionProductDataModel;
}
