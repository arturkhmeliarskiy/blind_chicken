import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


void showBaseAppModalSheet({required BuildContext context, required Widget child, bool? expand}) {
  showCustomModalBottomSheet(
    context: context,
    builder: (BuildContext _) {
      return SafeArea(
        bottom: false,
        child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: child,
          ),
        ),
      );
    },
    containerWidget: (_, animation, child) => child,
    expand: expand ?? false,
  );
}
