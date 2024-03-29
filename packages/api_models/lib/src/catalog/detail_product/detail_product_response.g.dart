// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailProductResponseImpl _$$DetailProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailProductResponseImpl(
      code: json['code'] as int?,
      photo: json['photo'] == null
          ? null
          : PhotoProductResponse.fromJson(
              json['photo'] as Map<String, dynamic>),
      breadcrumb: _convertBreadcrumb(json['breadcrumb']),
      brand: json['brand'] == null
          ? null
          : BrandProductResponse.fromJson(
              json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryProductResponse.fromJson(
              json['category'] as Map<String, dynamic>),
      option: (json['option'] as List<dynamic>?)
          ?.map(
              (e) => OptionProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      sku: _convertSku(json['sku']),
      stock: _convertStock(json['stock']),
      place: json['place'] == null
          ? null
          : PlaceProductResponse.fromJson(
              json['place'] as Map<String, dynamic>),
      char: _convertChar(json['char']),
      sections: _convertSections(json['sections']),
      text: json['text'] as String?,
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      art: json['art'] as String?,
      userDiscount: json['user_discount'] as int?,
      userBuyForNextDiscount: json['user_buy_for_next_discount'] as int?,
      userBuyForNextDiscountVal: json['user_buy_for_next_discount_val'] as int?,
      userNextDiscount: json['user_next_discount'] as int?,
      price: json['price'] == null
          ? null
          : PriceProductResponse.fromJson(
              json['price'] as Map<String, dynamic>),
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$DetailProductResponseImplToJson(
        _$DetailProductResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'photo': instance.photo,
      'breadcrumb': instance.breadcrumb,
      'brand': instance.brand,
      'category': instance.category,
      'option': instance.option,
      'sku': instance.sku,
      'stock': instance.stock,
      'place': instance.place,
      'char': instance.char,
      'sections': instance.sections,
      'text': instance.text,
      'name': instance.name,
      'quantity': instance.quantity,
      'art': instance.art,
      'user_discount': instance.userDiscount,
      'user_buy_for_next_discount': instance.userBuyForNextDiscount,
      'user_buy_for_next_discount_val': instance.userBuyForNextDiscountVal,
      'user_next_discount': instance.userNextDiscount,
      'price': instance.price,
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
    };
