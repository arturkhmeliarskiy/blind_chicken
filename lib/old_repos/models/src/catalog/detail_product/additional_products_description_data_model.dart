import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'additional_products_description_data_model.freezed.dart';

@freezed
class AdditionalProductsDescriptionDataModel with _$AdditionalProductsDescriptionDataModel {
  const AdditionalProductsDescriptionDataModel._();
  factory AdditionalProductsDescriptionDataModel({
    required String name,
    required String errorMessage,
    required List<ProductDataModel> products,
  }) = _AdditionalProductsDescriptionDataModel;
}
