import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BlindChickenButtonShoppingCart extends StatelessWidget {
  const BlindChickenButtonShoppingCart({
    super.key,
    required this.title,
    this.height = 44,
    this.width = double.infinity,
    required this.onChenge,
  });

  final String title;
  final double height;
  final double width;
  final VoidCallback onChenge;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChenge,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: BlindChickenColors.activeBorderTextField,
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        child: Center(
            child: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(builder: (context, state) {
          return state.maybeMap(
            productsShoppingCart: (initState) {
              return initState.isLoadAddProductToShopingCart
                  ? Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        strokeWidth: 3,
                        color: BlindChickenColors.backgroundColor,
                      ),
                    )
                  : Text(
                      title,
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: BlindChickenColors.backgroundColorItemFilter,
                            height: 1,
                          ),
                      textAlign: TextAlign.center,
                    );
            },
            orElse: () => const SizedBox(),
          );
        })),
      ),
    );
  }
}
