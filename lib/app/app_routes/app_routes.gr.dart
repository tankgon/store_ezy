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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../all_file/all_file.dart' as _i9;
import '../features/home/presentation/main/home_page.dart' as _i6;
import '../features/main/presentation/main_page.dart' as _i1;
import '../features/notification/data/model/notification_model.dart' as _i10;
import '../features/notification/presentation/detail/notification_detail_page.dart'
    as _i3;
import '../features/notification/presentation/main/notification_main_page.dart'
    as _i2;
import '../features/product/data/model/product_base_model.dart' as _i11;
import '../features/product/presentation/detail/product_detail_page.dart'
    as _i4;
import '../features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i5;

class AppAutoRoute extends _i7.RootStackRouter {
  AppAutoRoute([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NotificationMainPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ShoppingCartPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            _i7.RouteConfig(
              HomeRoute.name,
              path: 'Home',
              parent: MainRoute.name,
            )
          ],
        ),
        _i7.RouteConfig(
          NotificationMainRoute.name,
          path: '/notification-main',
        ),
        _i7.RouteConfig(
          NotificationDetailRoute.name,
          path: '/notification-detail',
        ),
        _i7.RouteConfig(
          ProductDetailRoute.name,
          path: 'Product-Detail',
        ),
        _i7.RouteConfig(
          ShoppingCartRoute.name,
          path: 'ShoppingCart',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.NotificationMainPage]
class NotificationMainRoute extends _i7.PageRouteInfo<void> {
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
    extends _i7.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i9.Key? key,
    required _i10.NotificationDetailModel item,
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

  final _i9.Key? key;

  final _i10.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i4.ProductDetailPage]
class ProductDetailRoute extends _i7.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i9.Key? key,
    required _i11.ProductModel product,
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

  final _i9.Key? key;

  final _i11.ProductModel product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i5.ShoppingCartPage]
class ShoppingCartRoute extends _i7.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: 'ShoppingCart',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'Home',
        );

  static const String name = 'HomeRoute';
}
