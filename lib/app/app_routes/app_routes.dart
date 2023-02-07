import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/core/routes/home_routes.dart';
import 'package:ez_store/app/features/home/presentation/main/home_page.dart';
import 'package:ez_store/app/features/main/view/main_page.dart';
import 'package:ez_store/app/features/notification/core/routes/notification_routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/main',
      page: MainPage,
      children: [
        ...homeRoutes,
      ],
    ),
    ...notificationRoutes
  ],
)
class $AppAutoRoute {}
