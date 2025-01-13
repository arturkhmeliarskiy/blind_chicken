import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class AccountVirtualCardScreen extends StatefulWidget {
  const AccountVirtualCardScreen({super.key});

  @override
  State<AccountVirtualCardScreen> createState() => _AccountVirtualCardScreenState();
}

class _AccountVirtualCardScreenState extends State<AccountVirtualCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: BlindChickenColors.backgroundColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Text(
                  'Карта',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      'assets/icons/x.svg',
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
            child: Text(
              'Покажите QR-код консультанту, чтобы использовать скидку и бонусы',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: BlindChickenColors.textInput,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
            return state.maybeMap(
              preloadDataCompleted: (initState) {
                return Container(
                  height: 260,
                  width: 260,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: BlindChickenColors.borderBottomColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (!(initState.isLoadVirtualCardsCod ?? true)) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: BlindChickenColors.backgroundColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: BlindChickenQrCode(
                            data: initState.virtualCardsCod,
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                            backgroundColor: Colors.grey.shade400,
                          ),
                        );
                      }
                    },
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          })
        ],
      ),
    );
  }
}
