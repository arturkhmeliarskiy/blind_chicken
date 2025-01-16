import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:flutter/material.dart';


class LoadSwitch extends StatefulWidget {
  const LoadSwitch({
    super.key,
    this.isEnabled = true,
    required this.isActive,
    required this.isLoading,
    this.onTap,
    this.scale = 0.55,
  });

  final bool isEnabled;
  final bool isActive;
  final bool isLoading;
  final VoidCallback? onTap;
  final double? scale;

  @override
  State<LoadSwitch> createState() => _LoadSwitchState();
}

class _LoadSwitchState extends State<LoadSwitch> {
  bool value = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    if (value != widget.isActive) {
      value = widget.isActive;
      setState(() {});
    }
    if (loading != widget.isLoading) {
      loading = widget.isLoading;
      setState(() {});
    }

    //У самой либы нету возиожности нормального масштабирования, потому через scale
    return Transform.scale(
      scale: widget.scale,
      alignment: Alignment.centerRight,
      child: AnimatedToggleSwitch<bool>.dual(
        current: value,
        first: false,
        second: true,
        spacing: 0,
        animationDuration: const Duration(milliseconds: 600),
        style: ToggleStyle(
          borderColor: Colors.transparent,
          indicatorColor: AppColors.white,
          backgroundColor: AppColors.greyEA,
        ),
        customStyleBuilder: (context, local, global) => ToggleStyle(
            backgroundGradient: LinearGradient(
          colors: widget.isEnabled == true
              ? [
                  AppColors.primary,
                  AppColors.greyEA,
                ]
              : [
                  AppColors.grey76,
                  AppColors.grey76,
                ],
          stops: [
            global.position - (1 - 2 * max(0, global.position - 0.5)) * 0.5,
            global.position + max(0, 2 * (global.position - 0.5)) * 0.5,
          ],
        )),
        loadingIconBuilder: (context, global) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: CircularHolder()),
          );
        },
        onChanged: (b) async {
          if (loading == false && widget.isEnabled == true) {
            widget.onTap?.call();
          }
        },
        loading: loading,
      ),
    );
  }
}
