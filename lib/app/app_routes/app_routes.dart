import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/core/routes/auth_routes.dart';
import 'package:ez_store/app/features/checkout/self.dart';
import 'package:ez_store/app/features/home/presentation/main/home_page.dart';
import 'package:ez_store/app/features/main/presentation/main_page.dart';
import 'package:ez_store/app/features/message/self.dart';
import 'package:ez_store/app/features/notification/core/routes/notification_routes.dart';
import 'package:ez_store/app/features/product/core/routes/product_routes.dart';
import 'package:ez_store/app/features/product_rating/self.dart';
import 'package:ez_store/app/features/shopping_cart/core/routes/shopping_cart_routes.dart';
import 'package:ez_store/app/features/user/self.dart';
import 'package:ez_store/app/features/user_order/self.dart';

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
        AutoRoute(
          path: 'UserOrder',
          page: UserOrderPage,
        ),
        AutoRoute(
          path: 'UserAccount',
          page: UserAccountPage,
        ),
        AutoRoute(
          path: 'message',
          page: MessagePage,
        )
      ],
    ),
    ...notificationRoutes,
    ...productRoutes,
    ...shoppingCartRoutes,
    ...checkoutRoutes,
    ...productRatingRoutes,
    ...authRoutes,
    ...userOrderRoutes,
  ],
)
class $AppAutoRoute {}
