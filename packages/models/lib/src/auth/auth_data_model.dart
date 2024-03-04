import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/auth/captha_data_model.dart';

part 'auth_data_model.freezed.dart';

@freezed
class AuthDataModel with _$AuthDataModel {
  const AuthDataModel._();
  factory AuthDataModel({
    required String r,
    required CapthaDataModel captcha,
    required String message,
    required int seconds,
    required String send,
  }) = _AuthDataModel;
}
