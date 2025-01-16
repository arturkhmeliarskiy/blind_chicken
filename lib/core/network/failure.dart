import 'package:equatable/equatable.dart';

class Failure extends Equatable implements Exception {
  final String title;
  final String message;

  const Failure({
    required this.title,
    required this.message,
  });

  factory Failure.fromException(String exception) {
    return Failure(title: 'Unexpected Error', message: exception);
  }

  factory Failure.fromJson(Map<String, dynamic> json) {
    return Failure(
      title: json['title'] ?? '',
      message: json['message'] ?? '',
    );
  }

  @override
  List<Object?> get props => [title, message];
}
