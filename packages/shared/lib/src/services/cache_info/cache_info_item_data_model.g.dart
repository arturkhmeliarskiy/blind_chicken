// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_info_item_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheInfoItemDataModelAdapter
    extends TypeAdapter<CacheInfoItemDataModel> {
  @override
  final int typeId = 4;

  @override
  CacheInfoItemDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CacheInfoItemDataModel(
      id: fields[0] as String,
      title: fields[1] as String,
      mobileImage: fields[2] as String,
      tabletImage: fields[3] as String,
      url: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CacheInfoItemDataModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.mobileImage)
      ..writeByte(3)
      ..write(obj.tabletImage)
      ..writeByte(4)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheInfoItemDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
