import 'package:freezed_annotation/freezed_annotation.dart';

part 'breadcrumbs_data_model.freezed.dart';

@freezed
class BreadcrumbsDataModel with _$BreadcrumbsDataModel {
  const BreadcrumbsDataModel._();
  factory BreadcrumbsDataModel({
    required String women,
    required String optics,
    required String glasses,
  }) = _BreadcrumbsDataModel;
}
