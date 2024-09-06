import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_info_item_data_model.freezed.dart';

@freezed
class BasketInfoItemDataModel with _$BasketInfoItemDataModel {
  const BasketInfoItemDataModel._();
  factory BasketInfoItemDataModel({
    required String code,
    required String sku,
    required int count,
    required String titleScreen, // экран добавления в корзину
    required String searchQuery, // поисковой запрос
    required String typeAddProductToShoppingCart, // с помощью чего добавляется в корзину
    required String
        identifierAddProductToShoppingCart, // идентификатор отарвителя товара в корзину (1 кнопка, 2 выпадающий список)
    required List<String>
        sectionCategoriesPath, // категории в к оторых находится товар "Акции", "Красная цена"
    required List<String>
        productCategoriesPath, // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
    String? skuName,
  }) = _BasketInfoItemDataModel;
}
