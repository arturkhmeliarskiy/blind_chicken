import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutiques_response.freezed.dart';
part 'boutiques_response.g.dart';

@freezed
class BoutiquesResponse with _$BoutiquesResponse {
  const BoutiquesResponse._();
  factory BoutiquesResponse({
    int? id,
    String? title,
    String? address,
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'working_hours') String? workingHours,
    List<String>? images,
    @JsonKey(name: 'product_categories') String? productCategories,
    @JsonKey(name: 'product_categories_brend') String? productCategoriesBrend,
    String? butterflies,
    String? balaclavas,
    @JsonKey(name: 'ballet_flats') String? balletFlats,
    @JsonKey(name: 'balms_restorers_skin') String? balmsRestorersSkin,
    @JsonKey(name: 'baseball_caps') String? baseballCaps,
    String? bermuda,
    String? bikinis,
    String? blouses,
    String? body,
    @JsonKey(name: 'body_underwear') String? bodyUnderwear,
    String? sandals,
    @JsonKey(name: 'ankle_boots') String? ankleBoots,
    String? boots,
    String? bra,
    String? bracelets,
    @JsonKey(name: 'key_rings') String? keyRings,
    String? briefcases,
    String? brooches,
    String? trousers,
    String? bras,
    @JsonKey(name: 'value_1') String? value1,
    @JsonKey(name: 'value_2') String? value2,
    @JsonKey(name: 'value_3') String? value3,
    @JsonKey(name: 'value_4') String? value4,
    @JsonKey(name: 'value_5') String? value5,
    @JsonKey(name: 'value_6') String? value6,
    @JsonKey(name: 'value_7') String? value7,
    @JsonKey(name: 'value_8') String? value8,
    @JsonKey(name: 'value_9') String? value9,
    @JsonKey(name: 'value_10') String? value10,
    @JsonKey(name: 'value_11') String? value11,
    @JsonKey(name: 'value_12') String? value12,
    @JsonKey(name: 'value_13') String? value13,
    @JsonKey(name: 'value_14') String? value14,
    @JsonKey(name: 'value_15') String? value15,
    @JsonKey(name: 'value_16') String? value16,
    @JsonKey(name: 'value_17') String? value17,
    @JsonKey(name: 'value_18') String? value18,
  }) = _BoutiquesResponse;
  factory BoutiquesResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiquesResponseFromJson(json);
}
