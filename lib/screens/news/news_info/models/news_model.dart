import 'dart:convert';

import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/core_config/utils/string_extensions.dart';

class News {
  List<NewsElement> list;
  String r;
  String e;

  News({
    required this.list,
    required this.r,
    required this.e,
  });

  factory News.fromRawJson(String str) => News.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory News.fromJson(Map<String, dynamic> json) => News(
        list: List<NewsElement>.from(json["list"].map((x) => NewsElement.fromJson(x))),
        r: json["r"],
        e: json["e"],
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
        "r": r,
        "e": e,
      };
}

class NewsElement {
  String id;
  String title;
  DateTime createAt;
  List<String> images;
  String? video;
  List<String> videos;
  TypeVideo typeVideo;
  String videoImage;
  String announcement;
  TypeMedia typeMedia;
  String description;
  String? titleButton;
  String typePath;
  String path;
  String? codeProduct;
  dynamic sort;
  String filterSelect;
  String? uidStore;
  int countLike;
  bool isViewed;

  NewsElement({
    required this.id,
    required this.title,
    required this.createAt,
    required this.images,
    required this.video,
    required this.videos,
    required this.typeVideo,
    required this.videoImage,
    required this.announcement,
    required this.typeMedia,
    required this.description,
    required this.titleButton,
    required this.typePath,
    required this.path,
    required this.codeProduct,
    required this.sort,
    required this.filterSelect,
    required this.uidStore,
    required this.countLike,
    this.isViewed = false,
  });

  factory NewsElement.fromRawJson(String str) => NewsElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewsElement.fromJson(Map<String, dynamic> json) {
    return NewsElement(
      id: json["id"],
      title: json["title"],
      createAt: DateTime.parse(json["create_at"]),
      images: List<String>.from(json["images"].map((x) => "${Env.baseUrl}$x")),
      video: json["video"].toString().isNullOrEmpty ? null : (Env.baseUrl + json["video"]),
      videos: List<String>.from(json["videos"].map((x) {
        if (x.toString().isNotNullOrEmpty) return "${Env.baseUrl}$x";
      })),
      typeVideo: typeVideoValues.map[json["type_video"]]!,
      videoImage: json["video_image"],
      announcement: json["announcement"],
      typeMedia: typeMediaValues.map[json["type_media"]]!,
      description: json["description"],
      titleButton: json["title_button"],
      typePath: json["type_path"],
      path: json["path"],
      codeProduct: json["code_product"],
      sort: json["sort"],
      filterSelect: json["filter_select"],
      uidStore: json["uid_store"],
      countLike: json["count_like"],
      isViewed: json["isViewed"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "create_at": createAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.replaceAll(Env.baseUrl, ''))),
        "video": video?.replaceAll(Env.baseUrl, ''),
        "videos": List<dynamic>.from(videos.map((x) => x.replaceAll(Env.baseUrl, ''))),
        "type_video": typeVideoValues.reverse[typeVideo],
        "video_image": videoImage,
        "announcement": announcement,
        "type_media": typeMediaValues.reverse[typeMedia],
        "description": description,
        "title_button": titleButton,
        "type_path": typePath,
        "path": path,
        "code_product": codeProduct,
        "sort": sort,
        "filter_select": filterSelect,
        "uid_store": uidStore,
        "count_like": countLike,
        "isViewed": isViewed,
      };
}

enum TypeMedia { images, video, media }

final typeMediaValues = EnumValues(
  {
    "images": TypeMedia.images,
    "video": TypeMedia.video,
    "media": TypeMedia.media,
  },
);

enum TypeVideo { original }

final typeVideoValues = EnumValues({"original": TypeVideo.original});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
