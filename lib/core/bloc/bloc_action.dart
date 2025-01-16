import 'package:blind_chicken/core_config/models/error_response.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class BlocAction {
  DateTime dateTime = DateTime.now();
}

class ShowMessage extends BlocAction {
  ShowMessage(
    this.message, {
    this.isError = false,
  });

  String message;
  bool isError;
}

class HideKeyboard extends BlocAction {}

class ShowLoader extends BlocAction {}

class HideLoader extends BlocAction {}

class NavigateBack extends BlocAction {
  NavigateBack({
    this.rootNavigator = false,
    this.returnedValue,
  });

  final dynamic returnedValue;
  final bool rootNavigator;
}

class ShowSnackBarMessage extends BlocAction {
  ShowSnackBarMessage({
    required this.message,
    this.color,
  });

  String message;
  Color? color = AppColors.greyEA;
}

class ShowNewItems<I> extends BlocAction {
  ShowNewItems({
    required this.items,
    required this.totalItemsCount,
  });

  List<I> items;
  int totalItemsCount;
}

class ShowLastItems<I> extends BlocAction {
  ShowLastItems({
    required this.items,
  });

  List<I> items;
}

class ClearItems extends BlocAction {}

class UpdateItems<I> extends BlocAction {
  UpdateItems({
    required this.items,
  });

  List<I> items;
}

class ShowSubscriptionModal extends BlocAction {}

class ShowModerator extends BlocAction {}

class ShowSomethingWrong extends BlocAction {
  final ErrorResponse? errorResponse;
  final VoidCallback? pressedButton;
  final int? code;

  ShowSomethingWrong({this.errorResponse, this.pressedButton, this.code});
}

class ScrollToBottom extends BlocAction {}

class NavigateGoTo extends BlocAction {
  final String path;

  NavigateGoTo({required this.path});
}
