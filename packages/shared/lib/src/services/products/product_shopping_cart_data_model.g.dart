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
    );
  }

  @override
  void write(BinaryWriter writer, ProductShoppingCartDataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.sku)
      ..writeByte(2)
      ..write(obj.count);
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
