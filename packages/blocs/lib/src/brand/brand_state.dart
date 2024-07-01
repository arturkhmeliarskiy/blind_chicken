part of 'brand_bloc.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState.init() = InitBrandState;
  const factory BrandState.load() = LoadingBrandState;
  const factory BrandState.preloadDataCompleted({
    required String selectedTypePeople,
    required List<String> listTypePeople,
    required List<BrandItemDataModel> allBrands,
    required List<BrandDataModel> listBrands,
    required List<BrandDataModel> defaultListBrands,
    required List<CountBrand> listCountBrand,
    required List<int> listBrandsPath,
  }) = PreloadDataCompletedBrandState;
}
