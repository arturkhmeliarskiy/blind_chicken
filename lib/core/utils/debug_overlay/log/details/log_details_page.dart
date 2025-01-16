import 'package:flutter/material.dart';
import 'package:pimmer_app/app/presentation/widgets/others/line.dart';
import 'package:pimmer_app/core/utils/debug_overlay/util/utils.dart';

import '../../util/data_card.dart';
import '../../util/expandable_card.dart';
import '../log_event.dart';

class LogDetailsPage extends StatelessWidget {
  final LogEvent entry;

  const LogDetailsPage({
    super.key,
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      DataCard(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: constraints.maxWidth),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(width: 100),
                        child: Column(
                          children: [
                            SelectableText(
                              entry.level.name.toUpperCase(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: entry.levelColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(
                              "LEVEL",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 200),
                        child: Column(
                          children: [
                            SelectableText(
                              entry.time.toString(),
                              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(
                              "TIME",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: MediaQuery.sizeOf(context).width / 100 * 85),
                        child: Column(
                          children: [
                            const Line(),
                            SelectableText(
                              (entry.name ?? ''),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: entry.levelColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(
                              "NAME",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Line(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      ExpandableCard(
        title: Row(
          children: [
            const Text("Message"),
            IconButton(
              icon: const Icon(Icons.copy),
              tooltip: "Copy message",
              onPressed: () {
                Utils.copyToClipboard(context, value: entry.message);
              },
            ),
          ],
        ),
        expanded: true,
        expandable: false,
        child: SelectableText(entry.message),
      ),
      if (entry.error != null)
        ExpandableCard(
          title: Row(
            children: [
              const Text("Error"),
              IconButton(
                icon: const Icon(Icons.copy),
                tooltip: "Copy error",
                onPressed: () {
                  Utils.copyToClipboard(context, value: entry.error.toString());
                },
              ),
            ],
          ),
          expanded: true,
          child: SelectableText(entry.error.toString()),
        ),
      if (entry.stackTrace != null)
        ExpandableCard(
          title: Row(
            children: [
              const Text("Stack Trace"),
              IconButton(
                icon: const Icon(Icons.copy),
                tooltip: "Copy stackTrace",
                onPressed: () {
                  Utils.copyToClipboard(context, value: entry.stackTrace.toString());
                },
              ),
            ],
          ),
          expanded: true,
          child: entry.stackTrace.toString().isNotEmpty ? SelectableText(entry.stackTrace.toString()) : null,
        ),
    ];

    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: children.length,
      itemBuilder: (context, index) {
        Widget item = children[index];
        return Column(
          children: [
            item,
            const Line(),
          ],
        );
      },
    );
  }
}
