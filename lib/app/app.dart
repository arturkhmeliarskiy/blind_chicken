import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/app/bloc/app_bloc.dart';

import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/core_config/localization/l10n/generated/l10n.dart';
import 'package:blind_chicken/core_config/ui/resources/app_themes.dart';
import 'package:blind_chicken/core_config/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:blind_chicken/core_config/ui/widgets/base_bloc_state_widget.dart';
import 'package:blind_chicken/core_config/ui/widgets/close_keyboard_by_tap.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/core_config/utils/debug_overlay/debug_overlay.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final sl = GetIt.instance;

class App extends StatefulWidget {
  const App(
    this.appRouter, {
    super.key,
  });

  final AppRouter appRouter;

  @override
  AppWidgetState createState() => AppWidgetState();
}

class AppWidgetState extends BaseBlocStateWidget<App, AppBloc, AppEvent> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    sendEvent(
      AppEvent.appLifecycleStateChanged(state),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.unFocus();
    return BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          //ThemeMode themeMode = getColorsSchemeMode(state.colorSchemeMode);
          return CloseKeyboardByTap(
              child: MaterialApp.router(
            theme: FlexCustomAppTheme.light,
            //darkTheme: FlexCustomAppTheme.dark,
            themeMode: ThemeMode.light,

            //themeMode,
            //locale: state.locale,
            debugShowCheckedModeBanner: false,
            builder: (_, widget) {
              Widget child = widget ?? const SizedBox();

              if (Env.enableDebugOverlay) {
                return DebugOverlay(
                    visible: state.visibleDebugOverlay,
                    logBucket: Locator.injection(),
                    child: buildBody(
                      child,
                    ));
              }
              return buildBody(
                child,
              );
            },
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalization.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: AppLocalization.delegate.supportedLocales,
            routerDelegate: widget.appRouter.delegate(
              navigatorObservers: () {
                return [NavigatorObserver(), AutoRouteObserver()];
              },
            ),
            routeInformationParser: widget.appRouter.defaultRouteParser(),
          ));
        });
  }

  Widget buildBody(Widget child) {
    return ScrollConfiguration(
      behavior: const DisableGrowEffectScrollBehavior(),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          invertStatusIcons: true,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
          useDivider: false,
        ),
        child: Column(
          children: [
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
