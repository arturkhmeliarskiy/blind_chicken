part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.getBrands({
    int? selectTypePeople,
    String? titleScreen,
  }) = GetBrandsBrandEvent;
  const factory BrandEvent.switchGenderBrands({
    required int selectTypePeople,
  }) = SwitchGenderBrandsBrandEvent;
  const factory BrandEvent.search({
    required String query,
  }) = SearchBrandEvent;
  const factory BrandEvent.goBackBrandInfo() = GoBackBrandInfoCategotyBrandEvent;
}
