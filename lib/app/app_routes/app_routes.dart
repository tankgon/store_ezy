import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/core/routes/auth_routes.dart';
import 'package:mulstore/app/features/checkout/self.dart';
import 'package:mulstore/app/features/home/presentation/main/home_page.dart';
import 'package:mulstore/app/features/main/presentation/main_page.dart';
import 'package:mulstore/app/features/message/self.dart';
import 'package:mulstore/app/features/notification/core/routes/notification_routes.dart';
import 'package:mulstore/app/features/product/core/routes/product_routes.dart';
import 'package:mulstore/app/features/product_rating/self.dart';
import 'package:mulstore/app/features/shopping_cart/core/routes/shopping_cart_routes.dart';
import 'package:mulstore/app/features/user/self.dart';
import 'package:mulstore/app/features/user_order/self.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Dialog,Route',
)
class AppAutoRoute extends $AppAutoRoute {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'user-order', page: UserOrderRoute.page),
        AutoRoute(path: 'user-account', page: UserAccountRoute.page),
        AutoRoute(path: 'message', page: MessageRoute.page),
      ],
    ),
    ...notificationRoutes,
    ...productRoutes,
    ...shoppingCartRoutes,
    ...checkoutRoutes,
    ...productRatingRoutes,
    ...authRoutes,
    ...userOrderRoutes,
  ];
}
