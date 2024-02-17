import 'package:freezed_annotation/freezed_annotation.dart';

part 'char_product_data_model.freezed.dart';

@freezed
class CharProductDataModel with _$CharProductDataModel {
  const CharProductDataModel._();
  factory CharProductDataModel({
    required String name,
    required String value,
  }) = _CharProductDataModel;
}
