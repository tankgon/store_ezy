import 'package:app_ui_kit/components/app/dismiss_keyboard.dart';
import 'package:app_ui_kit/components/app/scroll_behavior_default.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/view/bloc/auth_bloc.dart';
import 'package:ez_store/app/features/auth/view/widget/auth_listener.dart';
import 'package:ez_store/l10n/l10n.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Theme.of(context).canvasColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        title: F.title,
        builder: (context, child) {
          return _flavorBanner(
            child: _AppWidget(
              appRouter: appRouter,
              child: child ?? Gaps.empty,
            ),
          );
        },
        themeMode: ThemeMode.light,
        theme: AppTheme.getTheme(),
        darkTheme: AppTheme.getTheme(isDark: true),
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(
          initialRoutes: [
            const MainRoute(),
          ],
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
  }) {
    if (F.appFlavor == Flavor.PRODUCTION) {
      return child;
    }
    return Banner(
      location: BannerLocation.topStart,
      message: F.name,
      color: Colors.green.withOpacity(0.6),
      textStyle: const TextStyle(
        fontWeight: BaseFontWeight.semiBold,
        fontSize: 10,
      ),
      child: child,
    );
  }
}

class _AppWidget extends StatelessWidget {
  const _AppWidget({super.key, required this.appRouter, required this.child});

  final AppAutoRoute appRouter;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(AuthFirstLoadUserEvent()),
        ),
      ],
      child: _AppConfiguration(
        child: AuthListener(
          child: child,
        ),
      ),
    );
  }
}

class _AppConfiguration extends StatelessWidget {
  const _AppConfiguration({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: PagingConfiguration(
        configData: PagingConfigData(),
        child: DialogConfiguration(
          configData: DialogConfigData(
            confirmLabel: 'Confirm',
            cancelLabel: 'Cancel',
            deleteLabel: 'Delete',
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehaviorDefault(),
            child: LoaderOverlay(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
