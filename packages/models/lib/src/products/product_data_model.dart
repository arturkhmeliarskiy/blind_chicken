import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'product_data_model.freezed.dart';

@freezed
class ProductDataModel with _$ProductDataModel {
  const ProductDataModel._();
  factory ProductDataModel({
    required int id,
    required String title,
    required String category,
    required List<String> size,
    required int price,
    required int pb,
    required int yourPrice,
    required String brend,
    required int lensDiameter,
    required int templeLength,
    required String country,
    required List<String> images,
    required List<String> variants,
    required int maximumCashback,
    required int maximumPersonalDiscount,
    required bool isYourPriceDisplayed,
    required bool isShop,
    required List<CatalogSizeProductDataModel> sz,
    required String promo,
    required int promoValue,
    String? titleScreen, // экран добавления в корзину
    String? searchQuery, // поисковой запрос
    String? typeAddProductToShoppingCart, // с помощью чего добавляется в корзину
    String?
        identifierAddProductToShoppingCart, // идентификатор отарвителя товара в корзину (1 кнопка, 2 выпадающий список)
    List<String>?
        sectionCategoriesPath, // категории в к оторых находится товар "Акции", "Красная цена"
    List<String>?
        productCategoriesPath, // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
    String? count,
    Color? color,
  }) = _ProductDataModel;
}
