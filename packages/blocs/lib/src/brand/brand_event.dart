part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.preloadData() = InitBrandEvent;
  const factory BrandEvent.switchTypePeople({
    required String selectTypePeople,
  }) = SwitchTypePeopleBrandEvent;
  const factory BrandEvent.search({
    required String query,
  }) = SearchBrandEvent;
}
