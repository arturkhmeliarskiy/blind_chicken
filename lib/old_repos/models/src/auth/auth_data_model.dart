import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/auth/captha_data_model.dart';

part 'auth_data_model.freezed.dart';

@freezed
class AuthDataModel with _$AuthDataModel {
  const AuthDataModel._();
  factory AuthDataModel({
    required String r,
    required CapthaDataModel captcha,
    required String errorMessage,
    required int seconds,
    required String send,
  }) = _AuthDataModel;
}
