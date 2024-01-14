import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/login/login_sms_code_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ui_kit/ui_kit.dart';

class LoginPhoneScreen extends StatefulWidget {
  const LoginPhoneScreen({
    super.key,
  });

  @override
  State<LoginPhoneScreen> createState() => _LoginPhoneScreenState();
}

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
  final TextEditingController _phone = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
    mask: '### ### ## ##',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          sendMessage: (value) {
            showDialog(
                context: context,
                builder: (context) {
                  return LoginSmsCodeScreen(
                    phone: value ?? '',
                  );
                });
          },
          orElse: () {},
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 16,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
              return state.maybeMap(
                  sendMessage: (iniState) {
                    return Column(
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
                                  'Войти или создать профиль',
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
                                'Телефон',
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
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    controller: _phone,
                                    inputFormatters: [maskFormatter],
                                    cursorColor: BlindChickenColors.activeBorderTextField,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(height: 1.4),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: BlindChickenColors.borderTextField,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: BlindChickenColors.activeBorderTextField,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 5,
                                        ),
                                        child: Text(
                                          '+7',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(height: 1),
                                        ),
                                      ),
                                      focusColor: BlindChickenColors.backgroundColor,
                                      fillColor: BlindChickenColors.backgroundColor,
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(height: 1),
                                      hintText: '000 000 00 00',
                                      prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                                      contentPadding: EdgeInsets.zero,
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
                              title: 'Получить код',
                              onChenge: () {
                                context.popRoute();
                                context.read<LoginBloc>().add(LoginEvent.phone(_phone.text));
                              },
                            ),
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
                          child: Stack(
                            children: [
                              Text(
                                '       Даю согласие на обработку моих персональных данных '
                                'в рамках закона N 152-ФЗ от 27.07.2006',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              SvgPicture.asset(
                                'assets/icons/check-square.svg',
                                height: 17.5,
                                width: 17.5,
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  load: (value) => Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                  orElse: () => const SizedBox());
            }),
          ),
        ],
      ),
    );
  }
}
