import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../util/data_card.dart';
import '../util/utils.dart';
import 'log_event.dart';

class LogItem extends StatelessWidget {
  final LogEvent entry;
  final bool selected;
  final void Function() onSelected;

  const LogItem({
    super.key,
    required this.entry,
    this.selected = false,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    MaterialColor effectiveLevelColor = entry.levelColor;

    return DataCard(
      selected: selected,
      onTap: onSelected,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (entry.name != null)
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: effectiveLevelColor.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(minWidth: 51),
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    child: Text(
                      entry.name ?? '',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.labelMedium().copyWith(
                        color: effectiveLevelColor.shade900,
                      ),
                      maxLines: 5,
                    ),
                  ),
                ),
              ],
            ),
          if (entry.name != null) const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: effectiveLevelColor.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: const BoxConstraints(minWidth: 51),
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        child: Text(
                          entry.level.name.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: AppTextStyles.labelLarge().copyWith(
                            color: effectiveLevelColor.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.copy),
                tooltip: "Copy message",
                onPressed: () {
                  Utils.copyToClipboard(context, value: entry.message);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(entry.message, maxLines: 2, overflow: TextOverflow.ellipsis, style: AppTextStyles.bodyMedium()),
          ),
          Row(
            children: [
              Text(
                entry.time.toString(),
                style: AppTextStyles.labelMedium(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
