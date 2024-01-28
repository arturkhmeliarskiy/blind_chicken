part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.preloadData({
    String? phone,
    String? name,
    String? email,
  }) = InitAccountEvent;
  const factory AccountEvent.updateInfo({
    String? phone,
    String? name,
    String? email,
  }) = UpdateInfoAccountEvent;
  const factory AccountEvent.paginationProduct({
    required int offset,
    required int limit,
  }) = PaginationOrdersAccountEvent;
}
