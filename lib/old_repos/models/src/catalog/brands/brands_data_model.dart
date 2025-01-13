import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/catalog/brands/brand_data_model.dart';

part 'brands_data_model.freezed.dart';

@freezed
class BrandsDataModel with _$BrandsDataModel {
  const BrandsDataModel._();
  factory BrandsDataModel({
    required List<BrandDataModel> brands,
    required String errorMessage,
  }) = _BrandsDataModel;
}
