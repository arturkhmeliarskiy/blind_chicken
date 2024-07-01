import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_item_data_model.freezed.dart';

@freezed
class BrandItemDataModel with _$BrandItemDataModel {
  const BrandItemDataModel._();
  factory BrandItemDataModel({
    required String u,
    required String n,
  }) = _BrandItemDataModel;
}
