import 'package:blind_chicken/app/bloc/app_bloc.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({
    required this.child,
    this.backgroundColor,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.safeAreaLeft = true,
    this.safeAreaRight = true,
    this.allowCloseKeyboard = true,
    this.floatingButton,
    this.floatingButtonLocation,
    super.key,
    this.appBar,
    this.onWillPop,
    this.bottomNavigationBar,
    this.shouldResize = true,
  });

  final Color? backgroundColor;
  final Widget child;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final bool safeAreaLeft;
  final bool safeAreaRight;
  final bool allowCloseKeyboard;
  final Widget? floatingButton;
  final FloatingActionButtonLocation? floatingButtonLocation;
  final PreferredSizeWidget? appBar;
  final WillPopCallback? onWillPop;
  final Widget? bottomNavigationBar;
  final bool shouldResize;

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => GestureDetector(
          onTap: () {
            if (allowCloseKeyboard) context.unFocus();
          },
          child: WillPopScope(
            onWillPop: onWillPop,
            child: Scaffold(
              resizeToAvoidBottomInset: shouldResize,
              floatingActionButton: floatingButton,
              floatingActionButtonLocation: floatingButtonLocation,
              backgroundColor: backgroundColor,
              appBar: appBar,
              bottomNavigationBar: bottomNavigationBar,
              body: SafeArea(
                top: safeAreaTop,
                bottom: safeAreaBottom,
                left: safeAreaLeft,
                right: safeAreaRight,
                child: child,
              ),
            ),
          ),
        ),
      );
}
