import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_response.freezed.dart';
part 'user_info_response.g.dart';

@freezed
class UserInfoResponse with _$UserInfoResponse {
  const UserInfoResponse._();
  factory UserInfoResponse({
    String? r,
    @JsonKey(name: 'e') String? errorMessage,
    UserResponse? user,
  }) = _UserInfoResponse;
  factory UserInfoResponse.fromJson(Map<String, dynamic> json) => _$UserInfoResponseFromJson(json);
}
