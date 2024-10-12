import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'favourites_catalog_info_data_model.freezed.dart';

@freezed
class FavouritesCatalogInfoDataModel with _$FavouritesCatalogInfoDataModel {
  const FavouritesCatalogInfoDataModel._();
  factory FavouritesCatalogInfoDataModel({
    required int userDiscount,
    required String h1,
    required String count,
    required String countFilter,
    required List<FilterInfoDataModel> filter,
    required List<ProductDataModel> products,
    required String r,
    required String e,
    required String errorMessage,
  }) = _FavouritesCatalogInfoDataModel;
}
