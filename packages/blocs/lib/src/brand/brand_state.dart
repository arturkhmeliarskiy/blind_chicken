part of 'brand_bloc.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState.init() = InitBrandState;
  const factory BrandState.load() = LoadingBrandState;
  const factory BrandState.preloadDataCompleted({
    required String selectedTypePeople,
    required List<String> listTypePeople,
    required List<String> allBrands,
    required Map<String, List<String>> listBrands,
    required Map<String, List<String>> defaultListBrands,
    required List<String> listAlphabetAndNumber,
    required List<CountBrand> listCountBrand,
  }) = PreloadDataCompletedBrandState;
}
