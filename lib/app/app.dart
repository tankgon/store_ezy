// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/app_routes/app_routes.dart';
import 'package:ez_store/app/features/auth/view/bloc/auth_bloc.dart';
import 'package:ez_store/app/features/auth/view/widget/auth_listener.dart';
import 'package:ez_store/app/features/notification/core/service/notification_utils.dart';
import 'package:ez_store/app/widgets/app/dismiss_keyboard.dart';
import 'package:ez_store/l10n/l10n.dart';
import 'package:ez_store/services/firebase_notification_service.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portal/flutter_portal.dart';

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
      child: OverlaySupport.global(
        child: Portal(
          child: MaterialApp.router(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            // localizationsDelegates: const [
            //   AppLocalizations.delegate,
            //   GlobalMaterialLocalizations.delegate,
            // ],
            // supportedLocales: AppLocalizations.supportedLocales,
            title: F.title,
            builder: (context, child) {
              return _flavorBanner(
                child: DismissKeyboard(
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider<AuthBloc>(
                        create: (context) => AuthBloc()..add(AuthFirstLoadUserEvent()),
                      ),
                    ],
                    child: _AppWidget(
                      appRouter: appRouter,
                      child: child ?? Gaps.empty,
                    ),
                  ),
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
        ),
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
        fontSize: 10.0,
      ),
      child: child,
    );
  }
}

class _AppWidget extends StatefulWidget {
  const _AppWidget({super.key, required this.appRouter, required this.child});

  final AppAutoRoute appRouter;
  final Widget child;

  @override
  State<_AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<_AppWidget> {
  @override
  void initState() {
    super.initState();

    // FirebaseNotificationService.instance.init(
    //   notificationPressedCallBack: _onNotificationClick,
    //   filterMessage: _filterNotification,
    // );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthListener(
      child: ScrollConfiguration(
        behavior: const ScrollBehaviorDefault(),
        child: widget.child,
      ),
    );
  }

  Future<void> _onNotificationClick(Map<String, dynamic>? data) async {
    // try {
    //   final isNavigate = await NotificationUtils.navigateToPage(
    //     router: widget.appRouter,
    //     data: data,
    //     currentUser: getIt<UserSecureStorage>().user,
    //   );
    //   final messageID = castOrNull<String>(data?['messageID']);
    //   if (!isNavigate) {
    //     if (widget.appRouter.current.name != NotificationMainRoute.name) {
    //       widget.appRouter.push(const NotificationMainRoute());
    //     }
    //     if (messageID.isNotNullOrEmpty() == true) {
    //       widget.appRouter.push(
    //         NotificationDetailRoute(
    //           item: NotificationDetailModel(
    //             messageID: messageID,
    //           ),
    //         ),
    //       );
    //     }
    //   } else {
    //     await getIt<NotificationRepo>().notificationMarkAsRead(messageID: messageID);
    //   }
    // } catch (e) {
    //   logger.e(e);
    // }
  }

  bool _filterNotification(Map<String, dynamic>? jsonData) {
    // logger.i('currentChatPageID $currentChatPageID');

    if (jsonData != null) {
      // if (jsonData['type'] == NotificationType.SEND_MESSAGE.name) {
      //   // var currentConversationID = Hive.box(AppConstant.KEY_BOX_SETTING)
      //   //     .get(AppConstant.KEY_CONVERSATION_ID);
      //   //
      //   // return false;
      // }
    }
    return true;
  }
}
