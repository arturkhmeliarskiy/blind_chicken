import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_info_data_model.freezed.dart';

@freezed
class FavouritesInfoDataModel with _$FavouritesInfoDataModel {
  const FavouritesInfoDataModel._();
  factory FavouritesInfoDataModel({
    required String r,
    required String e,
  }) = _FavouritesInfoDataModel;
}
