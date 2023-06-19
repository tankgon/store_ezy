import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/data/ms/api/ms_app_setting_api.dart';
import 'package:mulstore/app/common/data/ms/repo/ms_app_setting_repo.dart';
import 'package:mulstore/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:mulstore/app/features/auth/data/mulstore/auth_repo_ms.dart';
import 'package:mulstore/app/features/message/data/repo/message_repo_impl.dart';
import 'package:mulstore/app/features/message/self.dart';
import 'package:mulstore/app/features/product/data/ms/api/ms_product_api.dart';
import 'package:mulstore/app/features/product/data/ms/api/ms_product_category_api.dart';
import 'package:mulstore/app/features/product/data/ms/repo/ms_product_category_repo.dart';
import 'package:mulstore/app/features/product/data/ms/repo/ms_product_repo.dart';
import 'package:mulstore/app/features/product/data/wp/api/product_api_wp.dart';
import 'package:mulstore/app/features/product/data/wp/repo/product_repo_wp.dart';
import 'package:mulstore/app/features/product/domain/repo/product_category_repo.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';
import 'package:mulstore/app/features/user/data/mulstore/api/user_api_ms.dart';
import 'package:mulstore/app/features/user/data/mulstore/user_repo_ms.dart';
import 'package:mulstore/app/features/user/domain/repo/user_repo.dart';
import 'package:mulstore/firebase_options.dart';
import 'package:mulstore/firebase_options_dev.dart';
import 'package:mulstore/firebase_options_stag.dart';
import 'package:mulstore/services/app_config/app_config_service.dart';
import 'package:mulstore/services/user_secure_storage_service.dart';

import 'app/features/auth/self.dart';

final getIt = GetIt.instance;

Future<void> setupAppDependencies() async {
  log('SERVICE starting ...');

  await _appService();
  await _appDataProvider();

  // Navigation
  getIt.registerSingleton<AppAutoRoute>(AppAutoRoute());

  log('SERVICE all started...');
}

Future<void> _appService() async {
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
    ..registerSingleton<AppConfigService>(AppConfigService());

  _initDataMSService();
}

void _initDataMSService() {
  final dio = getIt<DioModule>().dio;

  getIt
    // API
    ..registerLazySingleton<UserApiMS>(() => UserApiMS(dio))
    ..registerLazySingleton<AuthApiMS>(() => AuthApiMS(dio))
    ..registerLazySingleton<MsProductApi>(() => MsProductApi(dio))
    ..registerLazySingleton<MsProductCategoryApi>(
        () => MsProductCategoryApi(dio))
    ..registerLazySingleton<MsAppSettingApi>(() => MsAppSettingApi(dio))

    // Repo
    ..registerLazySingleton<MsAppSettingRepo>(
      () => MsAppSettingRepo()..getAppSetting(),
    )
    ..registerLazySingleton<UserRepo>(UserRepoMS.new)
    ..registerLazySingleton<AuthRepo>(AuthRepoMS.new)
    ..registerLazySingleton<ProductRepo>(MsProductRepo.new)
    ..registerLazySingleton<ProductCategoryRepo>(MsProductCategoryRepo.new)
    ..registerLazySingleton<MessageRepo>(MessageRepoImpl.new);
}

void _initDataWPService() {
  final dio = getIt<DioModule>().dio;

  getIt
    // API
    ..registerLazySingleton<UserApiMS>(() => UserApiMS(dio))
    ..registerLazySingleton<AuthApiMS>(() => AuthApiMS(dio))
    ..registerLazySingleton<ProductApiWP>(() => ProductApiWP(dio))

    // Repo
    ..registerLazySingleton<UserRepo>(UserRepoMS.new)
    ..registerLazySingleton<AuthRepo>(AuthRepoMS.new)
    ..registerLazySingleton<ProductRepo>(ProductRepoWP.new)
    ..registerLazySingleton<MessageRepo>(MessageRepoImpl.new);
}
