import 'package:freezed_annotation/freezed_annotation.dart';

part 'breadcrumbs_response.freezed.dart';
part 'breadcrumbs_response.g.dart';

@freezed
class BreadcrumbsResponse with _$BreadcrumbsResponse {
  const BreadcrumbsResponse._();
  factory BreadcrumbsResponse({
    @JsonKey(name: 'Женщинам') String? women,
    @JsonKey(name: 'Оптика') String? optics,
    @JsonKey(name: 'Очки') String? glasses,
  }) = _BreadcrumbsResponse;
  factory BreadcrumbsResponse.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbsResponseFromJson(json);
}
