import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_response.freezed.dart';
part 'favourites_response.g.dart';

@freezed
class FavouritesResponse with _$FavouritesResponse {
  const FavouritesResponse._();
  factory FavouritesResponse({
    String? code,
    String? sku,
    List<String>? favorites,
    String? errorMessage,
  }) = _FavouritesResponse;
  factory FavouritesResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouritesResponseFromJson(json);
}
