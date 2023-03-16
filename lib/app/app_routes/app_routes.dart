import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/self.dart';
import 'package:ez_store/app/features/home/core/routes/home_routes.dart';
import 'package:ez_store/app/features/main/presentation/main_page.dart';
import 'package:ez_store/app/features/notification/core/routes/notification_routes.dart';
import 'package:ez_store/app/features/product/core/routes/product_routes.dart';
import 'package:ez_store/app/features/shopping_cart/core/routes/shopping_cart_routes.dart';

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
    ...notificationRoutes,
    ...productRoutes,
    ...shoppingCartRoutes,
    ...checkoutRoutes,
  ],
)
class $AppAutoRoute {}
