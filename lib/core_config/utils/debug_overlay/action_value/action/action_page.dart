import 'package:blind_chicken/core_config/ui/widgets/widgets/others/line.dart';
import 'package:flutter/material.dart';

import 'debug_action.dart';

class ActionPage extends StatelessWidget {
  final List<DebugAction> entries;

  const ActionPage({
    super.key,
    required this.entries,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      key: PageStorageKey(entries),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        DebugAction? debugAction = entries[index];
        return ListTile(
          title: Text("${debugAction.name}:"),
          trailing: ElevatedButton(
            onPressed: debugAction.onAction,
            child: Text(debugAction.name),
          ),
        );
      },
      separatorBuilder: (context, index) => const Line(),
    );
  }
}
