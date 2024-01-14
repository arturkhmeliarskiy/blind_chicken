import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
          height: 240,
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
                        widget.title,
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
                      widget.subTitle,
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
                          controller: _title,
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
                    title: 'Сохранить',
                    onChenge: () {
                      context.popRoute();
                      widget.onChange(_title.text);
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
