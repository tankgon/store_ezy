// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ez_store/all_file/all_file.dart';

import 'package:ez_store/app/app_routes/app_auto_route.gr.dart';
import 'package:ez_store/app/app_routes/app_routes.dart';
import 'package:ez_store/app/features/auth/bloc/auth_bloc.dart';
import 'package:ez_store/app/widgets/app/dismiss_keyboard.dart';
import 'package:ez_store/l10n/l10n.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
            theme: AppTheme.getTheme(isDark: false),
            darkTheme: AppTheme.getTheme(isDark: true),
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.delegate(
              initialRoutes: [
                const HomeRoute(),
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
        fontWeight: BaseFontWe,
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

    FirebaseNotificationService.instance.init(
      notificationPressedCallBack: _onNotificationClick,
      filterMessage: _filterNotification,
    );

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener(
      stream: Get.find<UserSecureStorage>().unAuthorized.stream,
      onData: (unAuthorized) {
        if (unAuthorized == true && Get.find<AppAutoRoute>().current.name != UserProfileRoute.name) {
          context.read<AuthBloc>().add(UnAuthenticatedEvent());
        }
      },
      child: Builder(builder: (context) {
        return BlocListener<CheckConsultantApproveCubit, CheckConsultantApproveState>(
          listener: (context, state) {
            if (state is CheckConsultantApproveStatusChange) {
              context.read<AuthBloc>().add(AuthFetchUserEvent());
            }
          },
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: _onAuthStateChange,
            builder: (context, state) {
              return ScrollConfiguration(
                behavior: const ScrollBehaviorDefault(),
                child: DynamicLinkListener(
                  router: widget.appRouter,
                  child: widget.child,
                ),
              );
            },
          ),
        );
      }),
    );
  }

  void _onAuthStateChange(BuildContext context, AuthState state) {
    if (state is AuthenticatedState) {
      context.read<CheckConsultantApproveCubit>().startListening();

      if (!state.isRefresh) {
        String msg;
        if (state.firstTimeLoginEver) {
          msg = 'welcomeNewUser'.tr.replaceFirst('<user_name>', state.data.userModel?.contactName ?? '');
        } else {
          msg = 'welcomeUser'.tr.replaceFirst('<user_name>', state.data.userModel?.contactName ?? '');
        }
        ToastUtils.showToast(context: context, msg: msg, duration: const Duration(seconds: 3));
      }
    } else if (state is UnAuthenticatedState) {
      context.read<CheckConsultantApproveCubit>().stopListening();

      if (state.openSignInPage) {
        widget.appRouter.push(SignInRoute());
        return;
      }

      if (state.showToast) {
        ToastUtils.showToast(
          context: context,
          msg: 'AL0016'.tr,
          duration: const Duration(seconds: 3),
        );
      }
    }
  }

  Future<void> _onNotificationClick(Map<String, dynamic>? data) async {
    try {
      final isNavigate = await NotificationUtils.navigateToPage(
        router: widget.appRouter,
        urlObject: UrlObjectModel.fromJson(data ?? {}),
        data: data,
        currentUser: Get.find<UserSecureStorage>().user,
      );
      final messageID = castOrNull<String>(data?['messageID']);
      if (!isNavigate) {
        if (widget.appRouter.current.name != NotificationMainRoute.name) {
          widget.appRouter.push(const NotificationMainRoute());
        }
        if (messageID.isNotNullOrEmpty() == true) {
          widget.appRouter.push(
            NotificationDetailRoute(
              item: NotificationDetailModel(
                messageID: messageID,
              ),
            ),
          );
        }
      } else {
        await Get.find<NotificationRepo>().notificationMarkAsRead(messageID: messageID);
      }
    } catch (e) {
      logger.e(e);
    }
  }

  bool _filterNotification(Map<String, dynamic>? jsonData) {
    // logger.i('currentChatPageID $currentChatPageID');

    if (jsonData != null) {
      if (jsonData['type'] == NotificationType.SEND_MESSAGE.name) {
        // var currentConversationID = Hive.box(AppConstant.KEY_BOX_SETTING)
        //     .get(AppConstant.KEY_CONVERSATION_ID);
        //
        // return false;
      }
    }
    return true;
  }
}
