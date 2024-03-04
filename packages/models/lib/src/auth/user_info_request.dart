import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/auth/basket_request.dart';

part 'user_info_request.freezed.dart';

@freezed
class UserInfoRequest with _$UserInfoRequest {
  const UserInfoRequest._();
  factory UserInfoRequest({
    required String code,
    required String token,
    required String hashToken,
    required String tel,
    required String hashTokenTel,
    required List<String> favorites,
    required List<BasketRequest> basket,
  }) = _UserInfoRequest;
}
