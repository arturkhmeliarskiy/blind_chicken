import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'additional_products_description_data_model.freezed.dart';

@freezed
class AdditionalProductsDescriptionDataModel with _$AdditionalProductsDescriptionDataModel {
  const AdditionalProductsDescriptionDataModel._();
  factory AdditionalProductsDescriptionDataModel({
    required String name,
    required List<ProductDataModel> products,
  }) = _AdditionalProductsDescriptionDataModel;
}
