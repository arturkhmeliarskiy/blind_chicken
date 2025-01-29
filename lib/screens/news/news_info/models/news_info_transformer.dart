import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/news_info_item_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/notification_info_item_response.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_item_data_model.dart';
import 'package:blind_chicken/old_repos/models/src/news/notification_info_item_data_model.dart';

class NewsInfoTransformer {
  static NewsInfoItemDataModel transformResponseToDataModel(NewsInfoItemResponse response) {
    String? videoPath;
    List<String> images = [];
    List<String> videos = [];
    for (var item in response.images ?? []) {
      images.add("${Env.baseUrl}$item");
    }
    for (var item in response.videos ?? []) {
      videos.add("${Env.baseUrl}$item");
    }
    if (response.video != null) {
      videoPath = "${Env.baseUrl}${response.video}";
    }

    return NewsInfoItemDataModel(
      id: response.id ?? '',
      title: response.title ?? '',
      createAt: response.createAt ?? '',
      images: images,
      videos: videos,
      video: videoPath ?? response.video ?? '',
      announcement: response.announcement ?? '',
      typeMedia: response.typeMedia ?? '',
      description: response.description ?? '',
      titleButton: response.titleButton ?? '',
      typePath: response.typePath ?? '',
      path: response.path ?? '',
      code: response.code ?? '',
      sort: response.sort ?? '',
      filterSelect: response.filterSelect ?? '',
      uidStore: response.uidStore ?? '',
      typeVideo: response.typeVideo ?? '',
      videoImage: response.videoImage ?? '',
      videoImageHeight: 0.0,
      videoImageWeight: 0.0,
      numberViews: response.numberViews ?? 0,
      isViewed: response.isViewed ?? false,
    );
  }

  static NotificationInfoItemDataModel transformNotificationResponseToDataModel(
    NotificationInfoItemResponse response, {
    bool? isViewed,
  }) {
    String? videoPath;
    List<String> images = [];
    List<String> videos = [];
    for (var item in response.images ?? []) {
      images.add("${Env.baseUrl}$item");
    }
    if (response.video != null) {
      videoPath = "${Env.baseUrl}${response.video}";
    }

    return NotificationInfoItemDataModel(
      id: response.id ?? '',
      title: response.title ?? '',
      createAt: response.createAt ?? '',
      images: images,
      video: videoPath ?? response.video ?? '',
      typeVideo: response.typeVideo ?? '',
      videoImage: response.videoImage ?? '',
      typeMedia: response.typeMedia ?? '',
      description: response.description ?? '',
      titleButton: response.titleButton ?? '',
      typePath: response.typePath ?? '',
      path: response.path ?? '',
      code: response.code ?? '',
      sort: response.sort ?? '',
      filterSelect: response.filterSelect ?? '',
      uidStore: response.uidStore ?? '',
      videoImageHeight: 0.0,
      videoImageWeight: 0.0,
      isViewed: isViewed ?? response.isViewed ?? false,
    );
  }
}
