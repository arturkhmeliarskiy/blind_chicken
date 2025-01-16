import 'package:flutter/material.dart';

class DisableGrowEffectScrollBehavior extends ScrollBehavior {
  const DisableGrowEffectScrollBehavior();

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
