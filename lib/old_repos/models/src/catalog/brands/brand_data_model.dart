import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/catalog/brands/brand_item_data_model.dart';

part 'brand_data_model.freezed.dart';

@freezed
class BrandDataModel with _$BrandDataModel {
  const BrandDataModel._();
  factory BrandDataModel({
    required String title,
    required List<BrandItemDataModel> value,
  }) = _BrandDataModel;
}
