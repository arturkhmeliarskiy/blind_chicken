import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';

class ErrorAnalyzerRepository {
  final ErrorAnalyzerService _errorAnalyzerService;
  ErrorAnalyzerRepository(this._errorAnalyzerService);

  Future<ErrorAnalyzerDataModel> sendError({
    required String stack,
    required String exception,
  }) async {
    final error = await _errorAnalyzerService.sendError(
          stack: stack,
          exception: exception,
        ) ??
        ErrorAnalyzerResponse();
    return error.toError();
  }
}

extension on ErrorAnalyzerResponse {
  ErrorAnalyzerDataModel toError() {
    return ErrorAnalyzerDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
    );
  }
}
