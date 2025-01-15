import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_information_request.g.dart';

@JsonSerializable()
class UserInformationRequest {
  String? code;
  String? token;
  String? hashToken;
  String? tel;
  String? hashTokenTel;
  List<String>? favorites;
  List<BasketInfoRequest>? basket;

  UserInformationRequest({
    this.code,
    this.token,
    this.hashToken,
    this.tel,
    this.hashTokenTel,
    this.favorites,
    this.basket,
  });

  factory UserInformationRequest.fromJson(Map<String, dynamic> json) =>
      _$UserInformationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserInformationRequestToJson(this);
}
