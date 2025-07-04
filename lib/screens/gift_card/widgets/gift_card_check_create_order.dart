import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GiftCardCheckCreateOrder extends StatefulWidget {
  const GiftCardCheckCreateOrder({
    super.key,
  });

  @override
  State<GiftCardCheckCreateOrder> createState() => _GiftCardCheckCreateOrderState();
}

class _GiftCardCheckCreateOrderState extends State<GiftCardCheckCreateOrder> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      BlocConsumer<GiftCardBloc, GiftCardState>(
        listener: (context, state) {
          state.maybeMap(
            createOrderSuccessfully: (value) {
              context.maybePop();
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            preloadDataCompleted: (initState) {
              return Container(
                height: 196,
                width: MediaQuery.of(context).size.width - 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        top: 28,
                      ),
                      child: Text(
                        'Проверка и создание заказа...',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    if (initState.isLoadCreateOrder)
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.black,
                            backgroundColor: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    if (!initState.isLoadCreateOrder &&
                        (initState.creatOrderMessage?.isNotEmpty ?? false))
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Text(
                          initState.creatOrderMessage ?? '',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                  ],
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      )
    ]);
  }
}
