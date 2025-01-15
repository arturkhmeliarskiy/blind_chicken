part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.load() = LoadingInternetConnectionState;
  const factory InternetConnectionState.init() = InitInternetConnectionState;
  const factory InternetConnectionState.active() = ActiveInternetConnectionState;
  const factory InternetConnectionState.notActive() = NotActiveInternetConnectionState;
}
