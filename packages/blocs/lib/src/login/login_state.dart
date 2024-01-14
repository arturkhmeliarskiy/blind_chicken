part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.load() = LoadingLoginState;
  const factory LoginState.sendMessage({
    String? phone,
  }) = SendMessageLoginState;
}
