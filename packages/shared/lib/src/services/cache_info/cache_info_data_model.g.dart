// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_info_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheInfoDataModelAdapter extends TypeAdapter<CacheInfoDataModel> {
  @override
  final int typeId = 3;

  @override
  CacheInfoDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CacheInfoDataModel(
      screen: fields[0] as String,
      dateTime: fields[1] as String,
      content: (fields[2] as List).cast<String>(),
      images: (fields[3] as List).cast<String>(),
      info: (fields[4] as List).cast<CacheInfoItemDataModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, CacheInfoDataModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.screen)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.images)
      ..writeByte(4)
      ..write(obj.info);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheInfoDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
