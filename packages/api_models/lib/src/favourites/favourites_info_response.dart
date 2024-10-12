import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_info_response.freezed.dart';
part 'favourites_info_response.g.dart';

@freezed
class FavouritesInfoResponse with _$FavouritesInfoResponse {
  const FavouritesInfoResponse._();
  factory FavouritesInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
  }) = _FavouritesInfoResponse;
  factory FavouritesInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouritesInfoResponseFromJson(json);
}
