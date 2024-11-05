// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_notification_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsNotificationDataModelAdapter
    extends TypeAdapter<NewsNotificationDataModel> {
  @override
  final int typeId = 2;

  @override
  NewsNotificationDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsNotificationDataModel(
      id: fields[0] as String,
      typeNews: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NewsNotificationDataModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.typeNews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsNotificationDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
