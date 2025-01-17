import 'package:blind_chicken/screens/login/login_captcha_screen.dart';
import 'package:blind_chicken/screens/login/login_sms_code_screen.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class LoginPhoneScreen extends StatefulWidget {
  const LoginPhoneScreen({
    super.key,
    required this.successfully,
    required this.onBack,
  });

  final VoidCallback successfully;
  final VoidCallback onBack;

  @override
  State<LoginPhoneScreen> createState() => _LoginPhoneScreenState();
}

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
  final TextEditingController _phone = TextEditingController();
  String _title = 'Телефон';

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
          successfully: widget.successfully,
          orElse: () {},
        );
      },
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return state.maybeMap(
            init: (iniState) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: iniState.message?.isNotEmpty ?? false ? 330 : 300,
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
                                  'Войти или создать профиль',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              GestureDetector(
                                onTap: widget.onBack,
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
                                _title,
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                              const SizedBox(
                                height: 3.5,
                              ),
                              Material(
                                child: SizedBox(
                                  height: 37,
                                  child: Theme(
                                    data:
                                        Theme.of(context).copyWith(splashColor: Colors.transparent),
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
                                          .displayMedium
                                          ?.copyWith(height: 1.35),
                                      keyboardType: TextInputType.number,
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
                                                .displayMedium
                                                ?.copyWith(height: 1.5),
                                          ),
                                        ),
                                        focusColor: BlindChickenColors.backgroundColor,
                                        fillColor: BlindChickenColors.backgroundColor,
                                        hintStyle:
                                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                                  height: 1,
                                                  color: BlindChickenColors.textInput,
                                                ),
                                        hintText: '000 000 00 00',
                                        prefixIconConstraints: const BoxConstraints(maxWidth: 40),
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (iniState.message?.isNotEmpty ?? false)
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
                                          iniState.message ?? '',
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
                              title: 'Получить код',
                              onChenge: () {
                                String phone = _phone.text.replaceAll(' ', '');
                                if (phone.length == 10) {
                                  setState(() {
                                    _title = 'Телефон';
                                  });
                                  context.read<LoginBloc>().add(
                                        LoginEvent.phone(
                                          phone: '7${_phone.text.replaceAll(' ', '')}',
                                        ),
                                      );
                                } else {
                                  setState(() {
                                    _title = 'Введите номер телефона';
                                  });
                                }
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
                                style: Theme.of(context).textTheme.bodyMedium,
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
                    ),
                  ),
                ],
              );
            },
            smsCode: (value) {
              return LoginSmsCodeScreen(
                phone: value.phone ?? '',
                message: value.message ?? '',
              );
            },
            captcha: (value) {
              return LoginCaptchaScreen(
                code: value.code ?? '',
                phone: value.phone ?? '',
                message: value.message ?? '',
              );
            },
            load: (value) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width - 16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
            orElse: () => const SizedBox());
      }),
    );
  }
}
