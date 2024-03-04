part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.init() = InitLoginEvent;
  const factory LoginEvent.phone({
    required String phone,
  }) = PhoneLoginEvent;
  const factory LoginEvent.checkCaptcha({
    required String phone,
    required String captcha,
    required String code,
  }) = CheckCaptchaLoginEvent;
  const factory LoginEvent.checkSms({
    required String phone,
    required String code,
  }) = CheckSmsLoginEvent;
}
