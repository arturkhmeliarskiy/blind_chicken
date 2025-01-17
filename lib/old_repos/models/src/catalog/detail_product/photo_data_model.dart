import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_data_model.freezed.dart';

@freezed
class PhotoDataModel with _$PhotoDataModel {
  const PhotoDataModel._();
  factory PhotoDataModel({
    required List<String> mini,
    required List<String> full,
    required List<String> orig,
  }) = _PhotoDataModel;
}
