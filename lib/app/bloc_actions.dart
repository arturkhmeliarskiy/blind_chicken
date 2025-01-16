import 'package:flutter/material.dart';
import 'package:pimmer_app/core/bloc/bloc_action.dart';

class ShowLearningModeModal extends BlocAction {
  ShowLearningModeModal({
    required this.learningModeEnabled,
  });

  final bool learningModeEnabled;
}

class ChangeLocale extends BlocAction {
  ChangeLocale({
    required this.locale,
  });

  final Locale locale;
}

class ShowWelcomeModal extends BlocAction {}

class ShowInviteCodeModal extends BlocAction {}
