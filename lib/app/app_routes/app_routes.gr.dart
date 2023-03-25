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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../all_file/all_file.dart' as _i13;
import '../features/auth/presentation/sign_up/sign_up_page.dart' as _i8;
import '../features/checkout/self.dart' as _i6;
import '../features/home/presentation/main/home_page.dart' as _i9;
import '../features/main/presentation/main_page.dart' as _i1;
import '../features/notification/data/model/notification_model.dart' as _i14;
import '../features/notification/presentation/detail/notification_detail_page.dart'
    as _i3;
import '../features/notification/presentation/main/notification_main_page.dart'
    as _i2;
import '../features/product/data/model/product_base_model.dart' as _i15;
import '../features/product/presentation/detail/product_detail_page.dart'
    as _i4;
import '../features/product_rating/self.dart' as _i7;
import '../features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i5;
import '../features/user_order/self.dart' as _i10;

class AppAutoRoute extends _i11.RootStackRouter {
  AppAutoRoute([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NotificationMainPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ShoppingCartPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CheckoutPage(),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProductRatingPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.HomePage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.UserOrderPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            _i11.RouteConfig(
              HomeRoute.name,
              path: 'Home',
              parent: MainRoute.name,
            ),
            _i11.RouteConfig(
              UserOrderRoute.name,
              path: 'UserOrder',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          NotificationMainRoute.name,
          path: '/notification-main',
        ),
        _i11.RouteConfig(
          NotificationDetailRoute.name,
          path: '/notification-detail',
        ),
        _i11.RouteConfig(
          ProductDetailRoute.name,
          path: 'Product-Detail',
        ),
        _i11.RouteConfig(
          ShoppingCartRoute.name,
          path: 'ShoppingCart',
        ),
        _i11.RouteConfig(
          CheckoutRoute.name,
          path: 'Checkout',
        ),
        _i11.RouteConfig(
          ProductRatingRoute.name,
          path: 'ProductRating',
        ),
        _i11.RouteConfig(
          SignUpRoute.name,
          path: 'SignUp',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.NotificationMainPage]
class NotificationMainRoute extends _i11.PageRouteInfo<void> {
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
    extends _i11.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i13.Key? key,
    required _i14.NotificationDetailModel item,
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

  final _i13.Key? key;

  final _i14.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i4.ProductDetailPage]
class ProductDetailRoute extends _i11.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i13.Key? key,
    required _i15.ProductModel product,
  }) : super(
          ProductDetailRoute.name,
          path: 'Product-Detail',
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

  final _i13.Key? key;

  final _i15.ProductModel product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i5.ShoppingCartPage]
class ShoppingCartRoute extends _i11.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: 'ShoppingCart',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i6.CheckoutPage]
class CheckoutRoute extends _i11.PageRouteInfo<void> {
  const CheckoutRoute()
      : super(
          CheckoutRoute.name,
          path: 'Checkout',
        );

  static const String name = 'CheckoutRoute';
}

/// generated route for
/// [_i7.ProductRatingPage]
class ProductRatingRoute extends _i11.PageRouteInfo<void> {
  const ProductRatingRoute()
      : super(
          ProductRatingRoute.name,
          path: 'ProductRating',
        );

  static const String name = 'ProductRatingRoute';
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: 'SignUp',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'Home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i10.UserOrderPage]
class UserOrderRoute extends _i11.PageRouteInfo<void> {
  const UserOrderRoute()
      : super(
          UserOrderRoute.name,
          path: 'UserOrder',
        );

  static const String name = 'UserOrderRoute';
}
