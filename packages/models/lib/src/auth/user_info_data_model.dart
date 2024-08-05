import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/auth/user_response.dart';

part 'user_info_data_model.freezed.dart';

@freezed
class UserInfoDataModel with _$UserInfoDataModel {
  const UserInfoDataModel._();
  factory UserInfoDataModel({
    required String r,
    required String errorMessage,
    required UserDataModel user,
  }) = _UserInfoDataModel;
}
