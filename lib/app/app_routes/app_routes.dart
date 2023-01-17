import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/main/home_page.dart';
import 'package:ez_store/app/features/main/view/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/main',
      page: MainPage,
      children: [
        AutoRoute(
          path: 'Home',
          page: HomePage,
        ),
      ],
    ),
  ],
)
class $AppAutoRoute {}
