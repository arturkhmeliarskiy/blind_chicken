import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountChangeInfoUser extends StatefulWidget {
  const AccountChangeInfoUser({
    super.key,
    required this.title,
    required this.subTitle,
    required this.value,
    required this.onChange,
  });

  final String title;
  final String subTitle;
  final String value;
  final ValueChanged<String> onChange;

  @override
  State<AccountChangeInfoUser> createState() => _AccountChangeInfoUserState();
}

class _AccountChangeInfoUserState extends State<AccountChangeInfoUser> {
  TextEditingController _title = TextEditingController();
  bool _isWarning = false;

  @override
  void initState() {
    _title = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: _isWarning ? 270 : 240,
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
                    BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
                      return state.maybeMap(
                        preloadDataCompleted: (initState) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              widget.title,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          );
                        },
                        orElse: () => const SizedBox(),
                      );
                    }),
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
                      widget.subTitle,
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
                            onChanged: (value) {},
                            controller: _title,
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
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              if (_isWarning)
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    bottom: 14,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/warning.svg',
                        height: 17.5,
                        width: 17.5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Заполните ${widget.subTitle.toLowerCase()}.',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 28,
                ),
                child: Material(
                  child: BlindChickenButton(
                    title: 'Сохранить',
                    onChenge: () {
                      if (_title.text.isNotEmpty) {
                        context.maybePop();
                        widget.onChange(_title.text);
                        setState(() {
                          _isWarning = false;
                        });
                      } else {
                        setState(() {
                          _isWarning = true;
                        });
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
            ],
          ),
        )
      ],
    );
  }
}
