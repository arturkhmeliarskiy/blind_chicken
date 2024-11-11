import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_shedule_data_model.g.dart';

@JsonSerializable()
class BoutiqueSheduleDataModel {
  final int s;
  final int e;

  BoutiqueSheduleDataModel({
    required this.s,
    required this.e,
  });

  factory BoutiqueSheduleDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueSheduleDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoutiqueSheduleDataModelToJson(this);
}
