import 'package:blind_chicken/screens/news/widgets/notifications/notification_item_indicator.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class NotificationItemTabInfo extends StatefulWidget {
  const NotificationItemTabInfo({
    super.key,
    required this.item,
  });

  final NotificationInfoItemDataModel item;

  @override
  State<NotificationItemTabInfo> createState() => _NotificationItemTabInfoState();
}

class _NotificationItemTabInfoState extends State<NotificationItemTabInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: BlindChickenColors.borderBottomColor,
          ),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.item.title,
                  style: Theme.of(context).textTheme.displayLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  widget.item.createAt,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: BlindChickenColors.textInput,
                      ),
                ),
              ],
            ),
          ),
          if (!widget.item.isViewed) const NotificationItemIndicator()
        ],
      ),
    );
  }
}
