import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class OrdersHemmingScreen extends StatefulWidget {
  const OrdersHemmingScreen({super.key});

  @override
  State<OrdersHemmingScreen> createState() => _OrdersHemmingScreenState();
}

class _OrdersHemmingScreenState extends State<OrdersHemmingScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.only(
          left: 10.5,
          right: 10.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarBlindChicken(),
            const SizedBox(
              height: 16.1,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.popRoute();
                  },
                  child: Text(
                    'Личный кабинет',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Бланки заказов на подшив',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: BlindChickenColors.activePageSelected,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 11.9,
            ),
            Text(
              'Бланки заказов на подшив',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 14.0,
            ),
            _isLoading
                ? Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(),
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Загрузка данных...',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  )
                : Text(
                    'Список бланков заказов на подшив пуст.',
                    style: Theme.of(context).textTheme.headline2,
                  ),
          ],
        ),
      ),
    );
  }
}
