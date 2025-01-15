import 'package:freezed_annotation/freezed_annotation.dart';

part 'this_data_model.freezed.dart';

@freezed
class ThisDataModel with _$ThisDataModel {
  const ThisDataModel._();
  factory ThisDataModel({
    required String glasses,
  }) = _ThisDataModel;
}
