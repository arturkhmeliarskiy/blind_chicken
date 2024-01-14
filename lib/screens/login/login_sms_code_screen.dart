import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class LoginSmsCodeScreen extends StatefulWidget {
  const LoginSmsCodeScreen({super.key, required this.phone});

  final String phone;

  @override
  State<LoginSmsCodeScreen> createState() => _LoginSmsCodeScreenState();
}

class _LoginSmsCodeScreenState extends State<LoginSmsCodeScreen> {
  final TextEditingController _smsCode = TextEditingController();

  @override
  void dispose() {
    _smsCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: 236,
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      'Введите код из сообщения',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.popRoute();
                    },
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(10.5),
                        child: SvgPicture.asset(
                          'assets/icons/x.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Код выслан на номер + 7 ${widget.phone}',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 3.5,
                  ),
                  Material(
                    child: SizedBox(
                      height: 37,
                      child: TextField(
                        onTap: () {},
                        onChanged: (value) {},
                        controller: _smsCode,
                        cursorColor: BlindChickenColors.activeBorderTextField,
                        style: Theme.of(context).textTheme.headline2?.copyWith(height: 1.4),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: BlindChickenColors.borderTextField,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusColor: BlindChickenColors.backgroundColor,
                          fillColor: BlindChickenColors.backgroundColor,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: BlindChickenColors.activeBorderTextField,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          contentPadding: const EdgeInsets.only(left: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: Material(
                child: BlindChickenButton(
                  title: 'Запросить новый код',
                  onChenge: () {
                    context.popRoute();
                    context.navigateTo(const AccountRoute());
                    context.read<AccountBloc>().add(
                          AccountEvent.preloadData(phone: widget.phone),
                        );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
