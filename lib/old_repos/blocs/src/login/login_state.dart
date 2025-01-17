part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.init({
    String? message,
  }) = InitLoginState;
  const factory LoginState.load() = LoadingLoginState;
  const factory LoginState.captcha({
    String? phone,
    String? code,
    String? message,
  }) = CaptchaLoginState;
  const factory LoginState.smsCode({
    String? phone,
    String? message,
  }) = SmsCodeLoginState;
  const factory LoginState.successfully() = SuccessfullyLoginState;
  const factory LoginState.errorMessage({
    int? seconds,
    String? phone,
  }) = ErrorMessageLoginState;
}
