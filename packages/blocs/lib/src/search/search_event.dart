part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = InitSearchEvent;
  const factory SearchEvent.searchProfucts(
    String query,
  ) = ProfuctsSearchEvent;
  const factory SearchEvent.selectFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = SelectFilterSearchEvent;
  const factory SearchEvent.deleteFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = DeleteFilterSearchEvent;
  const factory SearchEvent.deleteCatalogFilter({
    required int key,
    required int index,
    required FilterItemDataModel item,
  }) = DeleteCatalogSearchEvent;
  const factory SearchEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductSearchEvent;
  const factory SearchEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductSearchEvent;
}
