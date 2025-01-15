import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class ContentRepository {
  final ContentService _contentService;

  ContentRepository(this._contentService);

  Future<CheckContentInfoDataModel> checkContentInfo({required String dateTime}) async {
    final checkContentInfo = await _contentService.checkContentInfo(
          dateTime: dateTime,
        ) ??
        CheckContentInfoResponse();

    return checkContentInfo.toCheckContentInfo();
  }

  Future<ContentInfoDataModel> getContentInfo({required String screen}) async {
    final checkContentInfo = await _contentService.getContentInfo(
          screen: screen,
        ) ??
        ContentInfoResponse();

    return checkContentInfo.toContentInfo();
  }
}

extension on CheckContentInfoResponse {
  CheckContentInfoDataModel toCheckContentInfo() {
    return CheckContentInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      dateTime: dateTime ?? '',
      screens: screens ?? [],
    );
  }
}

extension on ContentInfoResponse {
  ContentInfoDataModel toContentInfo() {
    return ContentInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      dateTime: dateTime ?? '',
      content: content ?? [],
      images: images ?? [],
      info: List<ContentInfoItemDataModel>.from(
        info?.map(
              (item) => ContentInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                mobileImage: item.mobileImage ?? '',
                tabletImage: item.tabletImage ?? '',
                url: item.url ?? '',
              ),
            ) ??
            [],
      ),
    );
  }
}
