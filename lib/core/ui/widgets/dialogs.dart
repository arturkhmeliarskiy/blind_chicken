import 'package:flutter/material.dart';
import 'package:pimmer_app/app/resources/app_colors.dart';
import 'package:pimmer_app/core/bloc/bloc_action.dart';

void showSnackBarMessage(BuildContext context, ShowSnackBarMessage action) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        action.message,
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.primary),
      ),
      backgroundColor: action.color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
      ),
    ),
  );
}
