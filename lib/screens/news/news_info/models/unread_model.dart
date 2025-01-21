import 'dart:convert';

class UnreadModel {
  String r;
  String e;
  int news;
  int media;
  int notice;
  int total;

  UnreadModel({
    required this.r,
    required this.e,
    required this.news,
    required this.media,
    required this.notice,
    required this.total,
  });

  factory UnreadModel.fromRawJson(String str) => UnreadModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnreadModel.fromJson(Map<String, dynamic> json) => UnreadModel(
    r: json["r"],
    e: json["e"],
    news: json["news"],
    media: json["media"],
    notice: json["notice"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "r": r,
    "e": e,
    "news": news,
    "media": media,
    "notice": notice,
    "total": total,
  };
}
