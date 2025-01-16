import '../../core_config/localization/l10n/generated/l10n.dart';
import '../domain/api_failure.dart';

class BaseErrorHandler {
  static String handleError(ApiFailure failure, AppLocalization localization) {
    String handledError = '';
    if (failure is RequestFailure) {
      handledError = failure.message ?? '';
    } else if (failure is NetworkConnectionFailure) {
      handledError = localization.noNetworkConnection;
    } else {
      handledError = localization.somethingWrong;
    }
    return handledError;
  }
}
