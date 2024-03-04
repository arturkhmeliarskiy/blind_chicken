import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';

@freezed
class ProductDataModel with _$ProductDataModel {
  const ProductDataModel._();
  factory ProductDataModel({
    required int id,
    required String title,
    required String catrgory,
    required List<String> size,
    required int price,
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
    String? count,
    Color? color,
  }) = _ProductDataModel;
}
