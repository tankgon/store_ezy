// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i20;

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:mulstore/all_file/all_file.dart' as _i21;
import 'package:mulstore/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i4;
import 'package:mulstore/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i5;
import 'package:mulstore/app/features/auth/presentation/login/login_page.dart'
    as _i7;
import 'package:mulstore/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i3;
import 'package:mulstore/app/features/auth/presentation/sign_up/sign_up_page.dart'
    as _i6;
import 'package:mulstore/app/features/checkout/presentation/main/checkout_page.dart'
    as _i15;
import 'package:mulstore/app/features/home/presentation/main/home_page.dart'
    as _i1;
import 'package:mulstore/app/features/main/presentation/main_page.dart' as _i17;
import 'package:mulstore/app/features/message/presentation/main/message_page.dart'
    as _i12;
import 'package:mulstore/app/features/notification/data/model/notification_model.dart'
    as _i22;
import 'package:mulstore/app/features/notification/presentation/detail/notification_detail_page.dart'
    as _i8;
import 'package:mulstore/app/features/notification/presentation/main/notification_main_page.dart'
    as _i9;
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart'
    as _i23;
import 'package:mulstore/app/features/product/presentation/detail/product_detail_page.dart'
    as _i14;
import 'package:mulstore/app/features/product_rating/presentation/main/product_rating_page.dart'
    as _i2;
import 'package:mulstore/app/features/search/presentation/main/search_page.dart'
    as _i16;
import 'package:mulstore/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i18;
import 'package:mulstore/app/features/user/presentation/account/user_account_page.dart'
    as _i13;
import 'package:mulstore/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i10;
import 'package:mulstore/app/features/user_order/presentation/main/user_order_page.dart'
    as _i11;

abstract class $AppAutoRoute extends _i19.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProductRatingPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthOtpConfirmPage(
          confirmOTPFunc: args.confirmOTPFunc,
          onResendOTP: args.onResendOTP,
          otpLength: args.otpLength,
          otpMessage: args.otpMessage,
          key: args.key,
          successMessage: args.successMessage,
        ),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationMainPage(),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserOrderDetailPage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserOrderPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MessagePage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UserAccountPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.CheckoutPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.MainPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ShoppingCartPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductRatingPage]
class ProductRatingRoute extends _i19.PageRouteInfo<void> {
  const ProductRatingRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ProductRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i19.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i20.Future<bool> Function(String) confirmOTPFunc,
    required _i20.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i21.Key? key,
    String? successMessage,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          AuthOtpConfirmRoute.name,
          args: AuthOtpConfirmRouteArgs(
            confirmOTPFunc: confirmOTPFunc,
            onResendOTP: onResendOTP,
            otpLength: otpLength,
            otpMessage: otpMessage,
            key: key,
            successMessage: successMessage,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthOtpConfirmRoute';

  static const _i19.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i19.PageInfo<AuthOtpConfirmRouteArgs>(name);
}

class AuthOtpConfirmRouteArgs {
  const AuthOtpConfirmRouteArgs({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    this.key,
    this.successMessage,
  });

  final _i20.Future<bool> Function(String) confirmOTPFunc;

  final _i20.Future<Object?> Function() onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i21.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i4.ChangePasswordPage]
class ChangePasswordRoute extends _i19.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i21.Key? key,
    required String userID,
    required String uuid,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            userID: userID,
            uuid: uuid,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i19.PageInfo<ChangePasswordRouteArgs> page =
      _i19.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i21.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i19.PageRouteInfo<void> {
  const SignUpRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationDetailPage]
class NotificationDetailRoute
    extends _i19.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i21.Key? key,
    required _i22.NotificationDetailModel item,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i19.PageInfo<NotificationDetailRouteArgs> page =
      _i19.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i21.Key? key;

  final _i22.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i9.NotificationMainPage]
class NotificationMainRoute extends _i19.PageRouteInfo<void> {
  const NotificationMainRoute({List<_i19.PageRouteInfo>? children})
      : super(
          NotificationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationMainRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UserOrderDetailPage]
class UserOrderDetailRoute extends _i19.PageRouteInfo<void> {
  const UserOrderDetailRoute({List<_i19.PageRouteInfo>? children})
      : super(
          UserOrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UserOrderPage]
class UserOrderRoute extends _i19.PageRouteInfo<void> {
  const UserOrderRoute({List<_i19.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MessagePage]
class MessageRoute extends _i19.PageRouteInfo<void> {
  const MessageRoute({List<_i19.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UserAccountPage]
class UserAccountRoute extends _i19.PageRouteInfo<void> {
  const UserAccountRoute({List<_i19.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ProductDetailPage]
class ProductDetailRoute extends _i19.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i21.Key? key,
    required _i23.ProductEntity product,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i19.PageInfo<ProductDetailRouteArgs> page =
      _i19.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i21.Key? key;

  final _i23.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i15.CheckoutPage]
class CheckoutRoute extends _i19.PageRouteInfo<void> {
  const CheckoutRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchPage]
class SearchRoute extends _i19.PageRouteInfo<void> {
  const SearchRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.MainPage]
class MainRoute extends _i19.PageRouteInfo<void> {
  const MainRoute({List<_i19.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.ShoppingCartPage]
class ShoppingCartRoute extends _i19.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
