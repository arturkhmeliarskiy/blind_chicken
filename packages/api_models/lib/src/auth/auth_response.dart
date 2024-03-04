import 'package:api_models/src/auth/captha_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const AuthResponse._();
  factory AuthResponse({
    String? r,
    CapthaResponse? captcha,
    @JsonKey(name: 'e') String? message,
    @JsonKey(name: 't') int? seconds,
    String? send,
  }) = _AuthResponse;
  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}
