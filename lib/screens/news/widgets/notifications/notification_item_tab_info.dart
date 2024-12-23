import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
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
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.item.isViewed
            ? BlindChickenColors.backgroundColorItemFilter
            : BlindChickenColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: BlindChickenColors.textInput.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(3, 3), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        maxLines: 10,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateInfo.dateFormat(widget.item.createAt),
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: BlindChickenColors.textInput,
                                ),
                          ),
                          if (widget.item.isViewed)
                            Text(
                              'Не прочитано',
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                    color: BlindChickenColors.textInput,
                                  ),
                            )
                          else
                            SizedBox()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 0,
            thickness: 1,
            height: 1,
            color: BlindChickenColors.borderBottomColor,
          )
        ],
      ),
    );
  }
}
