// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../../all_file/all_file.dart' as _i19;
import '../features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i12;
import '../features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i11;
import '../features/auth/presentation/login/login_page.dart' as _i9;
import '../features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i10;
import '../features/auth/presentation/sign_up/sign_up_page.dart' as _i8;
import '../features/checkout/self.dart' as _i6;
import '../features/home/presentation/main/home_page.dart' as _i14;
import '../features/main/presentation/main_page.dart' as _i1;
import '../features/notification/data/model/notification_model.dart' as _i20;
import '../features/notification/presentation/detail/notification_detail_page.dart'
    as _i3;
import '../features/notification/presentation/main/notification_main_page.dart'
    as _i2;
import '../features/product/domain/entity/product_entity.dart' as _i21;
import '../features/product/presentation/detail/product_detail_page.dart'
    as _i4;
import '../features/product_rating/self.dart' as _i7;
import '../features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i5;
import '../features/user/self.dart' as _i16;
import '../features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i13;
import '../features/user_order/self.dart' as _i15;

class AppAutoRoute extends _i17.RootStackRouter {
  AppAutoRoute([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NotificationMainPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ShoppingCartPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CheckoutPage(),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProductRatingPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.AuthOtpConfirmPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ForgotPasswordPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ChangePasswordPage(),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.UserOrderDetailPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.HomePage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.UserOrderPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.UserAccountPage(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            _i17.RouteConfig(
              HomeRoute.name,
              path: 'Home',
              parent: MainRoute.name,
            ),
            _i17.RouteConfig(
              UserOrderRoute.name,
              path: 'UserOrder',
              parent: MainRoute.name,
            ),
            _i17.RouteConfig(
              UserAccountRoute.name,
              path: 'UserAccount',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i17.RouteConfig(
          NotificationMainRoute.name,
          path: '/notification-main',
        ),
        _i17.RouteConfig(
          NotificationDetailRoute.name,
          path: '/notification-detail',
        ),
        _i17.RouteConfig(
          ProductDetailRoute.name,
          path: 'product-detail',
        ),
        _i17.RouteConfig(
          ShoppingCartRoute.name,
          path: 'shopping-cart',
        ),
        _i17.RouteConfig(
          CheckoutRoute.name,
          path: 'checkout',
        ),
        _i17.RouteConfig(
          ProductRatingRoute.name,
          path: 'product-rating',
        ),
        _i17.RouteConfig(
          SignUpRoute.name,
          path: 'sign-up',
        ),
        _i17.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i17.RouteConfig(
          AuthOtpConfirmRoute.name,
          path: 'otp-confirm',
        ),
        _i17.RouteConfig(
          ForgotPasswordRoute.name,
          path: 'forgot-password',
        ),
        _i17.RouteConfig(
          ChangePasswordRoute.name,
          path: 'change-password',
        ),
        _i17.RouteConfig(
          UserOrderDetailRoute.name,
          path: 'user-order-detail',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i17.PageRouteInfo<void> {
  const MainRoute({List<_i17.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.NotificationMainPage]
class NotificationMainRoute extends _i17.PageRouteInfo<void> {
  const NotificationMainRoute()
      : super(
          NotificationMainRoute.name,
          path: '/notification-main',
        );

  static const String name = 'NotificationMainRoute';
}

/// generated route for
/// [_i3.NotificationDetailPage]
class NotificationDetailRoute
    extends _i17.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i19.Key? key,
    required _i20.NotificationDetailModel item,
  }) : super(
          NotificationDetailRoute.name,
          path: '/notification-detail',
          args: NotificationDetailRouteArgs(
            key: key,
            item: item,
          ),
        );

  static const String name = 'NotificationDetailRoute';
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i19.Key? key;

  final _i20.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i4.ProductDetailPage]
class ProductDetailRoute extends _i17.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i19.Key? key,
    required _i21.ProductEntity product,
  }) : super(
          ProductDetailRoute.name,
          path: 'product-detail',
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i19.Key? key;

  final _i21.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i5.ShoppingCartPage]
class ShoppingCartRoute extends _i17.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: 'shopping-cart',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i6.CheckoutPage]
class CheckoutRoute extends _i17.PageRouteInfo<void> {
  const CheckoutRoute()
      : super(
          CheckoutRoute.name,
          path: 'checkout',
        );

  static const String name = 'CheckoutRoute';
}

/// generated route for
/// [_i7.ProductRatingPage]
class ProductRatingRoute extends _i17.PageRouteInfo<void> {
  const ProductRatingRoute()
      : super(
          ProductRatingRoute.name,
          path: 'product-rating',
        );

  static const String name = 'ProductRatingRoute';
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: 'sign-up',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i10.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i17.PageRouteInfo<void> {
  const AuthOtpConfirmRoute()
      : super(
          AuthOtpConfirmRoute.name,
          path: 'otp-confirm',
        );

  static const String name = 'AuthOtpConfirmRoute';
}

/// generated route for
/// [_i11.ForgotPasswordPage]
class ForgotPasswordRoute extends _i17.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: 'forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i12.ChangePasswordPage]
class ChangePasswordRoute extends _i17.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: 'change-password',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i13.UserOrderDetailPage]
class UserOrderDetailRoute extends _i17.PageRouteInfo<void> {
  const UserOrderDetailRoute()
      : super(
          UserOrderDetailRoute.name,
          path: 'user-order-detail',
        );

  static const String name = 'UserOrderDetailRoute';
}

/// generated route for
/// [_i14.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'Home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i15.UserOrderPage]
class UserOrderRoute extends _i17.PageRouteInfo<void> {
  const UserOrderRoute()
      : super(
          UserOrderRoute.name,
          path: 'UserOrder',
        );

  static const String name = 'UserOrderRoute';
}

/// generated route for
/// [_i16.UserAccountPage]
class UserAccountRoute extends _i17.PageRouteInfo<void> {
  const UserAccountRoute()
      : super(
          UserAccountRoute.name,
          path: 'UserAccount',
        );

  static const String name = 'UserAccountRoute';
}
