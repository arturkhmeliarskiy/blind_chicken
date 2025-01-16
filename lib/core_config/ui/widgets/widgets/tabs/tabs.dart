import 'package:blind_chicken/core_config/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:flutter/material.dart';


class Tabs extends StatefulWidget {
  const Tabs({
    super.key,
    required this.child,
    required this.feedsChild,
    required this.facesChild,
    this.onSwapTab,
    required this.catsChild,
  });

  final Widget child;
  final Widget facesChild;
  final Widget feedsChild;
  final Widget catsChild;
  final Function(int index)? onSwapTab;

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(vsync: this, length: 4);

    _controller.addListener(() {
      widget.onSwapTab?.call(_controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color? color;
    Color? colorUnderline;
    if (context.isLightTheme()) {
      color = ThemeData.light().textTheme.bodyMedium?.color;
      colorUnderline = const Color(0xff9547DB);
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
            child: ScrollConfiguration(
              behavior: const DisableGrowEffectScrollBehavior(),
              child: TabBar(
                controller: _controller,
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicatorColor: colorUnderline ?? Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text('Стена', style: TextStyle(color: color)),
                  ),
                  Tab(
                    child: Text('Лица', style: TextStyle(color: color)),
                  ),
                  Tab(
                    child: Text('Лента', style: TextStyle(color: color)),
                  ),
                  Tab(
                    child: Text('Котики', style: TextStyle(color: color)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Center(
            child: widget.child,
          ),
          Center(
            child: widget.facesChild,
          ),
          Center(
            child: widget.feedsChild,
          ),
          Center(
            child: widget.catsChild,
          ),
        ],
      ),
    );
  }
}
