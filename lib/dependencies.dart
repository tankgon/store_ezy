import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:ez_store/app/features/auth/data/mulstore/auth_repo_ms.dart';
import 'package:ez_store/app/features/message/data/repo/message_repo_impl.dart';
import 'package:ez_store/app/features/message/self.dart';
import 'package:ez_store/app/features/user/data/mulstore/api/user_api_ms.dart';
import 'package:ez_store/app/features/user/data/mulstore/user_repo_ms.dart';
import 'package:ez_store/app/features/user/domain/repo/user_repo.dart';
import 'package:ez_store/firebase_options.dart';
import 'package:ez_store/firebase_options_dev.dart';
import 'package:ez_store/firebase_options_stag.dart';
import 'package:ez_store/services/app_config/app_config_service.dart';
import 'package:ez_store/services/device_service.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'app/features/auth/self.dart';

final getIt = GetIt.instance;

Future<void> setupAppDependencies() async {
  logger.i('SERVICE starting ...');

  await _appService();
  await _appDataProvider();

  // Navigation
  getIt.registerSingleton<AppAutoRoute>(AppAutoRoute());

  logger.i('SERVICE all started...');
}

Future<void> _appService() async {
  logger = LoggerCustom(logEnable: AppConfig.SHOW_LOG);

  await Hive.initFlutter();

  // Firebase
  switch (F.appFlavor) {
    case Flavor.DEVELOPMENT:
      await Firebase.initializeApp(
        options: DevFirebaseOptions.currentPlatform,
      );
      break;
    case Flavor.STAGING:
      await Firebase.initializeApp(
        options: StagFirebaseOptions.currentPlatform,
      );
      break;
    case Flavor.PRODUCTION:
    case null:
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      break;
  }

  // FlutterError.onError = Crashlytics.instance.recordFlutterError;
  // Call crash test
  // FirebaseCrashlytics.instance.crash();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  } else {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    await FirebaseCrashlytics.instance.sendUnsentReports();
  }
}

Future<void> _appDataProvider() async {
  getIt.registerSingleton<DioModule>(DioModule());

  // Init Price Service
  PriceService().init();
  FontSizeService().init(
    baseFontSize: 14,
  );

  // Init User Secure Storage And Device Service
  final userSecureStorage = UserSecureStorage();
  await userSecureStorage.init();
  getIt
    ..registerSingleton<UserSecureStorage>(userSecureStorage)
    ..registerSingleton<DeviceService>(DeviceService())
    ..registerSingleton<AppConfigService>(AppConfigService());

  _initDataService();
}

void _initDataService() {
  // Init Data Service
  final dio = getIt<DioModule>().dio;
  getIt
    ..registerLazySingleton<UserApiMS>(()=> UserApiMS(dio))
    ..registerLazySingleton<AuthApiMS>(()=> AuthApiMS(dio));

  getIt
    ..registerLazySingleton<UserRepo>(()=> UserRepoMS())
    ..registerLazySingleton<AuthRepo>(()=> AuthRepoMS())
    ..registerLazySingleton<MessageRepo>(()=> MessageRepoImpl());
}
