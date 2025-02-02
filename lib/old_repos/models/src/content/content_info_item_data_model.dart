import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_info_item_data_model.g.dart';

@JsonSerializable()
class ContentInfoItemDataModel {
  final String id;
  final String title;
  final String mobileImage;
  final String tabletImage;
  final String url;

  ContentInfoItemDataModel({
    required this.id,
    required this.title,
    required this.mobileImage,
    required this.tabletImage,
    required this.url,
  });

  factory ContentInfoItemDataModel.fromJson(Map<String, dynamic> json) =>
      _$ContentInfoItemDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContentInfoItemDataModelToJson(this);
}
