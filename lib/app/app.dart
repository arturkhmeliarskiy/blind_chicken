import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pimmer_app/app/bloc/app_bloc.dart';
import 'package:pimmer_app/app/navigation/app_router.dart';
import 'package:pimmer_app/app/resources/app_themes.dart';
import 'package:pimmer_app/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:pimmer_app/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:pimmer_app/core/ui/widgets/close_keyboard_by_tap.dart';
import 'package:pimmer_app/core/utils/context_extensions.dart';
import 'package:pimmer_app/core/utils/debug_overlay/debug_overlay.dart';
import 'package:pimmer_app/di/app_locator.dart';
import 'package:pimmer_app/domain/enums/color_scheme_type.dart';
import 'package:pimmer_app/env.dart';
import 'package:pimmer_app/localization/l10n/generated/l10n.dart';

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
    Hive.close();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.unFocus();
    return BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) =>
            previous.locale?.languageCode != current.locale?.languageCode ||
            previous.colorSchemeMode != current.colorSchemeMode,
        builder: (context, state) {
          //ThemeMode themeMode = getColorsSchemeMode(state.colorSchemeMode);
          return CloseKeyboardByTap(
              child: MaterialApp.router(
            theme: FlexCustomAppTheme.light,
            //darkTheme: FlexCustomAppTheme.dark,
            themeMode: ThemeMode.light,

            //themeMode,
            locale: state.locale,
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

  ThemeMode getColorsSchemeMode(ColorSchemeMode schemeMode) {
    ThemeMode themeMode = ThemeMode.dark;
    switch (schemeMode) {
      case ColorSchemeMode.auto:
        themeMode = ThemeMode.system;
        break;
      case ColorSchemeMode.dark:
        themeMode = ThemeMode.dark;
        break;
      case ColorSchemeMode.light:
        themeMode = ThemeMode.light;
        break;
    }
    return themeMode;
  }
}
