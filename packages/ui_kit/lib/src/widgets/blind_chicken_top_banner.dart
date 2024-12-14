import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'index.dart';

class BlindChickenTopBanner extends StatelessWidget {
  const BlindChickenTopBanner({super.key});

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBannerBloc, TopBannerState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadData: (initState) {
            return BlindChickenTopBannerInfo(
              bannerDataModel: initState.info,
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
