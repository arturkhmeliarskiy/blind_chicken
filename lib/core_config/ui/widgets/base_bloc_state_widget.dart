import 'package:blind_chicken/core_config/localization/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBlocStateWidget<W extends StatefulWidget, B extends Bloc, E> extends State<W> {
  AppLocalization get localization => AppLocalization.of(context);

  ColorScheme get colorScheme => Theme.of(context).colorScheme;

  B getBloc({BuildContext? targetContext}) => targetContext != null ? targetContext.read<B>() : context.read<B>();

  void sendEvent(E event, {BuildContext? targetContext}) {
    if (mounted) {
      getBloc(targetContext: targetContext).add(event);
    }
  }

  MediaQueryData get mediaQuery => MediaQuery.of(context);
}
