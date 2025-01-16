import 'dart:convert';

class ErrorResponse {
  final String title;
  final String message;
  final Button button;
  final List<dynamic> error;
  final int code;

  ErrorResponse({
    required this.title,
    required this.message,
    required this.button,
    required this.error,
    required this.code,
  });

  factory ErrorResponse.fromRawJson(String str) => ErrorResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorResponse.fromJson(Map<String, dynamic> json, {int? code}) => ErrorResponse(
        title: json["title"] ?? '',
        message: json["message"] ?? '',
        button: Button.fromJson(json["button"] ?? ''),
        error: List<dynamic>.from(json["error"].map((x) => x)),
        code: code ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "message": message,
        "button": button.toJson(),
        "error": List<dynamic>.from(error.map((x) => x)),
        "code": code,
      };
}

class Button {
  final String name;
  final String link;

  Button({
    required this.name,
    required this.link,
  });

  factory Button.fromRawJson(String str) => Button.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        name: json["name"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "link": link,
      };
}

class ErrorAccess {
  final String title;
  final String description;

  ErrorAccess({
    required this.title,
    required this.description,
  });

  factory ErrorAccess.fromRawJson(String str) => ErrorAccess.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorAccess.fromJson(Map<String, dynamic> json) => ErrorAccess(
        title: json["title"] ?? '',
        description: json["description"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
