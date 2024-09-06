part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionEvent with _$InternetConnectionEvent {
  const factory InternetConnectionEvent.init() = InitInternetConnectionEvent;
  const factory InternetConnectionEvent.preloadData() = PreloadDataInternetConnectionEvent;
  const factory InternetConnectionEvent.checkInternetConnection({
    // required InternetStatus status,
    required ConnectivityResult status,
  }) = CheckInitInternetConnectionEvent;
}
