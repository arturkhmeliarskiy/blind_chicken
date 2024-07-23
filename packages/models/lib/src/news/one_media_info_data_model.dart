import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'one_media_info_data_model.freezed.dart';

@freezed
class OneMediaInfoDataModel with _$OneMediaInfoDataModel {
  const OneMediaInfoDataModel._();
  factory OneMediaInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required MediaInfoItemDataModel data,
    required bool isViewed,
  }) = _OneMediaInfoDataModel;
}
