import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_content_info_data_model.freezed.dart';

@freezed
class CheckContentInfoDataModel with _$CheckContentInfoDataModel {
  const CheckContentInfoDataModel._();
  factory CheckContentInfoDataModel({
    required String dateTime,
    required List<String> screens,
    required String r,
    required String e,
    required String errorMessage,
  }) = _CheckContentInfoDataModel;
}
