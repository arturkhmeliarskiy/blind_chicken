import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class LoginSmsCodeScreen extends StatefulWidget {
  const LoginSmsCodeScreen({
    super.key,
    required this.phone,
    required this.message,
  });

  final String phone;
  final String message;

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
        height: widget.message.isNotEmpty ? 266 : 236,
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
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.maybePop();
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
                    'Код выслан на номер +${widget.phone}',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 3.5,
                  ),
                  Material(
                    child: SizedBox(
                      height: 37,
                      child: Theme(
                        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                        child: TextField(
                          onTap: () {},
                          onChanged: (value) {
                            if (value.length == 4) {
                              context.read<LoginBloc>().add(
                                    LoginEvent.checkSms(
                                      phone: widget.phone,
                                      code: value,
                                    ),
                                  );
                            }
                          },
                          controller: _smsCode,
                          cursorColor: BlindChickenColors.activeBorderTextField,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 1.4),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: BlindChickenColors.borderTextField,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
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
                  ),
                  if (widget.message.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/warning.svg',
                            height: 17.5,
                            width: 17.5,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: Text(
                              widget.message,
                              style: Theme.of(context).textTheme.displayMedium,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          )
                        ],
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
                    context.read<LoginBloc>().add(
                          LoginEvent.phone(
                            phone: widget.phone,
                          ),
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
