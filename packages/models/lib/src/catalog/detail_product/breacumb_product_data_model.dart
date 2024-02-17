import 'package:freezed_annotation/freezed_annotation.dart';

part 'breacumb_product_data_model.freezed.dart';

@freezed
class BreacumbProductDataModel with _$BreacumbProductDataModel {
  const BreacumbProductDataModel._();
  factory BreacumbProductDataModel({
    required String name,
    required String value,
  }) = _BreacumbProductDataModel;
}
