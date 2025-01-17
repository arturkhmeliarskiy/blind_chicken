part of 'news_info_bloc.dart';

@freezed
class NewsInfoState extends BaseBlocState with _$NewsInfoState {
  factory NewsInfoState({
    BlocAction? action,
    @Default(true) bool isLoading,
    @Default([]) List<NewsInfoItemDataModel> listNews,
  }) = _StartState;
}
