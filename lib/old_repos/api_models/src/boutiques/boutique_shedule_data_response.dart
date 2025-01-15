import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_shedule_data_response.freezed.dart';
part 'boutique_shedule_data_response.g.dart';

@freezed
class BoutiqueSheduleResponse with _$BoutiqueSheduleResponse {
  const BoutiqueSheduleResponse._();
  factory BoutiqueSheduleResponse({
    int? s,
    int? e,
  }) = _BoutiqueSheduleResponse;
  factory BoutiqueSheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueSheduleResponseFromJson(json);
}
