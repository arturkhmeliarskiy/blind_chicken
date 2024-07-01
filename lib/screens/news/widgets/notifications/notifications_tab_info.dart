import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notification_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsTabInfo extends StatefulWidget {
  const NotificationsTabInfo({super.key});

  @override
  State<NotificationsTabInfo> createState() => _NotificationsTabInfoState();
}

class _NotificationsTabInfoState extends State<NotificationsTabInfo> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      return state.maybeMap(
        preloadDataCompleted: (initState) {
          return ListView.builder(
            itemCount: initState.notificatios.list.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.navigateTo(
                    NotficationInfoDescriptionRoute(
                      info: initState.notificatios.list[index],
                    ),
                  );
                },
                child: NotificationItemTabInfo(
                  item: initState.notificatios.list[index],
                ),
              );
            },
          );
        },
        orElse: () => const SizedBox(),
      );
    });
  }
}
