// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_shopping_cart_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductShoppingCartDataModelAdapter
    extends TypeAdapter<ProductShoppingCartDataModel> {
  @override
  final int typeId = 1;

  @override
  ProductShoppingCartDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductShoppingCartDataModel(
      code: fields[0] as String,
      sku: fields[1] as String,
      count: fields[2] as int,
      titleScreen: fields[3] as String,
      searchQuery: fields[4] as String,
      typeAddProductToShoppingCart: fields[5] as String,
      identifierAddProductToShoppingCart: fields[6] as String,
      sectionCategoriesPath: (fields[7] as List).cast<String>(),
      productCategoriesPath: (fields[8] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductShoppingCartDataModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.sku)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.titleScreen)
      ..writeByte(4)
      ..write(obj.searchQuery)
      ..writeByte(5)
      ..write(obj.typeAddProductToShoppingCart)
      ..writeByte(6)
      ..write(obj.identifierAddProductToShoppingCart)
      ..writeByte(7)
      ..write(obj.sectionCategoriesPath)
      ..writeByte(8)
      ..write(obj.productCategoriesPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductShoppingCartDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
