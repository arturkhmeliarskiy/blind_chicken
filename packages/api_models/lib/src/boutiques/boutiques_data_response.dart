import 'package:api_models/api_models.dart';
import 'package:api_models/src/boutiques/boutique_coordinates_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutiques_data_response.freezed.dart';
part 'boutiques_data_response.g.dart';

@freezed
class BoutiquesDataResponse with _$BoutiquesDataResponse {
  const BoutiquesDataResponse._();
  factory BoutiquesDataResponse({
    @JsonKey(name: 'foto_min') String? fotoMin,
    String? url,
    String? caption,
    String? name,
    @JsonKey(name: 'name_short') String? nameShort,
    String? address,
    String? schedule,
    @JsonKey(name: 'uid_store') String? uidStore,
    @JsonKey(
      name: 'coordinates',
      fromJson: _convertCoordinates,
    )
    BoutiqueCoordinatesResponse? coordinates,
    @JsonKey(name: 'schedule_json') List<BoutiqueSheduleResponse>? scheduleInfo,
  }) = _BoutiquesDataResponse;
  factory BoutiquesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiquesDataResponseFromJson(json);
}

BoutiqueCoordinatesResponse? _convertCoordinates(dynamic json) {
  BoutiqueCoordinatesResponse coordinates = BoutiqueCoordinatesResponse(
    latitude: 0,
    longitude: 0,
  );

  if (json != null) {
    String value = json as String;
    coordinates = BoutiqueCoordinatesResponse(
      latitude: double.parse(value.split(',')[0]),
      longitude: double.parse(value.split(',')[1]),
    );
  }

  return coordinates;
}
