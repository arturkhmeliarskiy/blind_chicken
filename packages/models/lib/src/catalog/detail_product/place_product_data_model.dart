import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_product_data_model.freezed.dart';

@freezed
class PlaceProductDataModel with _$PlaceProductDataModel {
  const PlaceProductDataModel._();
  factory PlaceProductDataModel({
    required int b,
    required int s,
  }) = _PlaceProductDataModel;
}
