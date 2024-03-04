// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_favourite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductFavouriteModelAdapter extends TypeAdapter<ProductFavouriteModel> {
  @override
  final int typeId = 0;

  @override
  ProductFavouriteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductFavouriteModel(
      id: fields[0] as int,
      title: fields[1] as String,
      catrgory: fields[2] as String,
      size: (fields[3] as List).cast<String>(),
      price: fields[4] as int,
      youPrice: fields[5] as int,
      brend: fields[6] as String,
      lensDiameter: fields[7] as int,
      templeLength: fields[8] as int,
      country: fields[9] as String,
      images: (fields[10] as List).cast<String>(),
      variants: (fields[11] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductFavouriteModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.catrgory)
      ..writeByte(3)
      ..write(obj.size)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.youPrice)
      ..writeByte(6)
      ..write(obj.brend)
      ..writeByte(7)
      ..write(obj.lensDiameter)
      ..writeByte(8)
      ..write(obj.templeLength)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.images)
      ..writeByte(11)
      ..write(obj.variants);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFavouriteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
