import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetSeparator extends StatelessWidget {
  const BottomSheetSeparator({
    super.key,
    this.isSmall = false,
  });

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isSmall ? Assets.icons.other.smallSeparator : Assets.icons.onboardingFifthStep.separator,
    );
  }
}
