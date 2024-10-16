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
      category: fields[2] as String,
      size: (fields[3] as List).cast<String>(),
      price: fields[4] as int,
      youPrice: fields[5] as int,
      brend: fields[6] as String,
      lensDiameter: fields[7] as int,
      templeLength: fields[8] as int,
      country: fields[9] as String,
      images: (fields[10] as List).cast<String>(),
      variants: (fields[11] as List).cast<String>(),
      titleScreen: fields[12] as String,
      searchQuery: fields[13] as String,
      promo: fields[14] as String,
      promoValue: fields[15] as int,
      typeAddProductToShoppingCart: fields[16] as String,
      identifierAddProductToShoppingCart: fields[17] as String,
      sectionCategoriesPath: (fields[18] as List).cast<String>(),
      productCategoriesPath: (fields[19] as List).cast<String>(),
      imageVideo: fields[20] as String,
      videoUrl: fields[21] as String,
      discount: fields[22] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductFavouriteModel obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.category)
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
      ..write(obj.variants)
      ..writeByte(12)
      ..write(obj.titleScreen)
      ..writeByte(13)
      ..write(obj.searchQuery)
      ..writeByte(14)
      ..write(obj.promo)
      ..writeByte(15)
      ..write(obj.promoValue)
      ..writeByte(16)
      ..write(obj.typeAddProductToShoppingCart)
      ..writeByte(17)
      ..write(obj.identifierAddProductToShoppingCart)
      ..writeByte(18)
      ..write(obj.sectionCategoriesPath)
      ..writeByte(19)
      ..write(obj.productCategoriesPath)
      ..writeByte(20)
      ..write(obj.imageVideo)
      ..writeByte(21)
      ..write(obj.videoUrl)
      ..writeByte(22)
      ..write(obj.discount);
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
