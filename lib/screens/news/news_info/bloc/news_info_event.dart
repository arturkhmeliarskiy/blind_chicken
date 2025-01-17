part of 'news_info_bloc.dart';

@freezed
class NewsInfoEvent with _$NewsInfoEvent {
  const factory NewsInfoEvent.init() = _Init;
}

class ShowNeedUpdateMessage extends BlocAction {}

class RegisterLocalization extends BlocAction {}
