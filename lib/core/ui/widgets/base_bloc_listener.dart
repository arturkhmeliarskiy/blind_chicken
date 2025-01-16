import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pimmer_app/app/presentation/modals/info_modal.dart';
import 'package:pimmer_app/app/presentation/modals/on_board_agreement_bottom_sheet.dart';
import 'package:pimmer_app/core/bloc/base_bloc_state.dart';
import 'package:pimmer_app/core/bloc/bloc_action.dart';
import 'package:pimmer_app/core/utils/context_extensions.dart';
import 'package:pimmer_app/core/utils/string_extensions.dart';
import 'package:pimmer_app/localization/l10n/generated/l10n.dart';

import 'dialogs.dart';

class BaseBlocListener<B extends BlocBase<S>, S extends BaseBlocState> extends BlocListener<B, S> {
  BaseBlocListener({
    BlocListenerCondition<S>? listenWhen,
    Future<void> Function(BuildContext context, S state, BlocAction? action)? listener,
    required Widget child,
    super.key,
  }) : super(
          listenWhen: (previous, current) {
            return previous.action != current.action || listenWhen?.call(previous, current) == true;
          },
          listener: getBaseListener(listener),
          child: child,
        );

  static BlocWidgetListener<S> getBaseListener<S extends BaseBlocState>(
      Future<void> Function(BuildContext context, S state, BlocAction? action)? listener) {
    return (BuildContext context, S state) async {
      BlocAction? action = state.action;
      await listener?.call(context, state, action);
      if (action is NavigateBack) {
        if (context.mounted) {
          Navigator.of(context, rootNavigator: action.rootNavigator).pop(action.returnedValue);
        }
      }
      if (action is ShowSnackBarMessage) {
        if (context.mounted) {
          showSnackBarMessage(context, action);
        }
      }
      if (action is ShowSomethingWrong) {
        // код 504 - сервер не отвечает(таймаут)
        if (action.code == 504) {
          if (context.mounted) {
            showServerNotResponding(context, action);
          }
        } else if (action.errorResponse == null && action.errorAccess == null) {
          if (context.mounted) {
            showSnack(context);
          }
        } else {
          if (action.errorResponse != null) {
            if (context.mounted) {
              showErrorDialog(context, action);
            }
          } else {
            if (action.errorAccess != null) {
              if (context.mounted) {
                showErrorAccessDialog(context, action);
              }
            }
          }
        }
      }
      if (action is ShowAgreementBottomSheet) {
        if (context.mounted) {
          showAgreementBottomSheet(context, action);
        }
      }
    };
  }

  static Future<void> showServerNotResponding(BuildContext context, ShowSomethingWrong action) {
    return showInfoModal(
      context: context,
      title: context.localizations.waitingTimeIsLong,
      description: context.localizations.serverIsNotResponding,
      buttonText: action.errorResponse!.button.name.isNullOrEmpty
          ? AppLocalization.current.clearlyUnderstood
          : action.errorResponse!.button.name,
      onPressedButton: () {
        action.pressedButton?.call();
        Navigator.of(context).pop();
      },
    );
  }

  static void showErrorAccessDialog(BuildContext context, ShowSomethingWrong action) {
    showInfoModal(
      context: context,
      title: action.errorAccess?.title ?? '',
      description: action.errorAccess?.description ?? '',
      onPressedButton: () {
        action.pressedButton?.call();
        Navigator.of(context).pop();
      },
    );
  }

  static void showErrorDialog(BuildContext context, ShowSomethingWrong action) {
    showInfoModal(
      context: context,
      title: action.errorResponse?.title ?? '',
      description: action.errorResponse?.message ?? '',
      buttonText: action.errorResponse!.button.name.isNullOrEmpty
          ? AppLocalization.current.clearlyUnderstood
          : action.errorResponse!.button.name,
      onPressedButton: () {
        action.pressedButton?.call();
        Navigator.of(context).pop();
      },
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnack(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          context.localizations.somethingWrong,
        ),
      ),
    );
  }

  static void showAgreementBottomSheet(BuildContext context, ShowAgreementBottomSheet action) {
    showBarModalBottomSheet(
      overlayStyle: const SystemUiOverlayStyle(),
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              OnBoardAgreementBottomSheet(
                authProviders: action.authProviders,
                externalContext: context,
                action: action,
              ),
              const SizedBox(height: 32),
            ],
          ),
        );
      },
    );
  }
}
