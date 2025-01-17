import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_data_model.freezed.dart';

@freezed
class FavouritesDataModel with _$FavouritesDataModel {
  const FavouritesDataModel._();
  factory FavouritesDataModel({
    required String code,
    required String sku,
    required List<String> favorites,
    required String errorMessage,
  }) = _FavouritesDataModel;
}
