import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_response.freezed.dart';
part 'next_response.g.dart';

@freezed
class NextResponse with _$NextResponse {
  const NextResponse._();
  factory NextResponse({
    @JsonKey(name: 'Оправы') String? frames,
    @JsonKey(name: 'Солнцезащитные очки') String? sunglasses,
    @JsonKey(name: 'Горнолыжные маски') String? skiMasks,
  }) = _NextResponse;
  factory NextResponse.fromJson(Map<String, dynamic> json) => _$NextResponseFromJson(json);
}
