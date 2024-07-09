import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class PaymentVerificationScreen extends StatefulWidget {
  const PaymentVerificationScreen({
    super.key,
    required this.orderId,
  });

  final String orderId;

  @override
  State<PaymentVerificationScreen> createState() => _PaymentVerificationScreenState();
}

class _PaymentVerificationScreenState extends State<PaymentVerificationScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      context.read<AccountBloc>().add(
            AccountEvent.getInfoPayOrder(
              id: widget.orderId,
            ),
          );
      context.navigateTo(
        LoginRoute(
          children: [
            OrderUserInfoRoute(isPay: true),
          ],
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppBarBlindChicken(),
              Text(
                'Проверка оплаты...',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.grey.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
