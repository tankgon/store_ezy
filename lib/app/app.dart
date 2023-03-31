import 'package:app_ui_kit/components/app/dismiss_keyboard.dart';
import 'package:app_ui_kit/components/app/scroll_behavior_default.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/self.dart';
import 'package:ez_store/app/widgets/responsive/app_responsive_config.dart';
import 'package:flutter/services.dart';
import 'package:layout/layout.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: F.title,
        builder: (context, child) {
          return AppResponsiveConfig(
            child: _flavorBanner(
              child: _AppWidget(
                appRouter: appRouter,
                child: child ?? const SizedBox.shrink(),
              ),
            ),
          );
        },
        themeMode: ThemeMode.light,
        theme: AppTheme.getTheme(
          fontFamily: 'Inter',
        ),
        darkTheme: AppTheme.getTheme(
          isDark: true,
          fontFamily: 'Inter',
        ),
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
        fontWeight: FontWeight.w600,
        fontSize: 10,
      ),
      child: child,
    );
  }
}

class _AppWidget extends StatelessWidget {
  const _AppWidget({
    super.key,
    required this.appRouter,
    required this.child,
  });

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
            confirmLabel: LocaleKeys.common_dialog_Confirm.tr(),
            cancelLabel: LocaleKeys.common_dialog_Cancel.tr(),
            deleteLabel: LocaleKeys.common_dialog_Delete.tr(),
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