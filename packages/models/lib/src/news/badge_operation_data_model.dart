import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge_operation_data_model.freezed.dart';

@freezed
class BadgeOperationInfoDataModel with _$BadgeOperationInfoDataModel {
  const BadgeOperationInfoDataModel._();
  factory BadgeOperationInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required int news,
    required int media,
    required int notice,
    required int total,
  }) = _BadgeOperationInfoDataModel;
}
