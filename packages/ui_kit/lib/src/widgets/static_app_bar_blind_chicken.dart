import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StaticAppBarBlindChicken extends StatelessWidget {
  const StaticAppBarBlindChicken({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/logo.svg',
          width: 92,
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.5,
            right: 10.5,
          ),
          child: SvgPicture.asset(
            'assets/icons/location.svg',
            height: 21,
            width: 21,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.5,
            right: 10.5,
          ),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            height: 21,
            width: 21,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.5,
            right: 10.5,
          ),
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 21,
            width: 21,
          ),
        ),
      ],
    );
  }
}
