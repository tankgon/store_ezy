// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i30;

import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/cupertino.dart' as _i35;
import 'package:mulstore/all_file/all_file.dart' as _i29;
import 'package:mulstore/app/features/about/presentation/main/about_page.dart'
    as _i1;
import 'package:mulstore/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i2;
import 'package:mulstore/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i3;
import 'package:mulstore/app/features/auth/presentation/login/login_page.dart'
    as _i4;
import 'package:mulstore/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i5;
import 'package:mulstore/app/features/auth/presentation/sign_up/sign_up_page.dart'
    as _i6;
import 'package:mulstore/app/features/checkout/presentation/main/checkout_page.dart'
    as _i7;
import 'package:mulstore/app/features/home/presentation/main/home_page.dart'
    as _i8;
import 'package:mulstore/app/features/main/presentation/main_page.dart' as _i9;
import 'package:mulstore/app/features/message/presentation/main/message_page.dart'
    as _i10;
import 'package:mulstore/app/features/notification/data/model/notification_model.dart'
    as _i31;
import 'package:mulstore/app/features/notification/presentation/detail/notification_detail_page.dart'
    as _i11;
import 'package:mulstore/app/features/notification/presentation/main/notification_main_page.dart'
    as _i12;
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart'
    as _i32;
import 'package:mulstore/app/features/product/presentation/detail/product_detail_page.dart'
    as _i13;
import 'package:mulstore/app/features/product/presentation/product_search/product_search_page.dart'
    as _i14;
import 'package:mulstore/app/features/product_rating/presentation/main/product_rating_page.dart'
    as _i15;
import 'package:mulstore/app/features/search/presentation/main/search_page.dart'
    as _i16;
import 'package:mulstore/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i17;
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart'
    as _i34;
import 'package:mulstore/app/features/user/presentation/account/user_account_page.dart'
    as _i18;
import 'package:mulstore/app/features/user/presentation/address/crud_address/crud_address_page.dart'
    as _i19;
import 'package:mulstore/app/features/user/presentation/address/receive_address/receive_address_page.dart'
    as _i20;
import 'package:mulstore/app/features/user/presentation/detail_account/detail_account_page.dart'
    as _i21;
import 'package:mulstore/app/features/user/presentation/detail_account/user_account%20_info/user_account%20_info_page.dart'
    as _i22;
import 'package:mulstore/app/features/user/presentation/detail_account/user_email_info/user_email_info_page.dart'
    as _i23;
import 'package:mulstore/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_page.dart'
    as _i24;
import 'package:mulstore/app/features/user/presentation/info/user_info_page.dart'
    as _i25;
import 'package:mulstore/app/features/user/self.dart' as _i33;
import 'package:mulstore/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i26;
import 'package:mulstore/app/features/user_order/presentation/main/user_order_page.dart'
    as _i27;

abstract class $AppAutoRoute extends _i28.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.AuthOtpConfirmPage(
          confirmOTPFunc: args.confirmOTPFunc,
          onResendOTP: args.onResendOTP,
          otpLength: args.otpLength,
          otpMessage: args.otpMessage,
          key: args.key,
          successMessage: args.successMessage,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CheckoutPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MainPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MessagePage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.NotificationMainPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProductSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ProductSearchRouteArgs>(
          orElse: () => const ProductSearchRouteArgs());
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ProductSearchPage(
          key: args.key,
          filterData: args.filterData,
        ),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ProductRatingPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ShoppingCartPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.UserAccountPage(),
      );
    },
    CrudAddressRoute.name: (routeData) {
      final args = routeData.argsAs<CrudAddressRouteArgs>(
          orElse: () => const CrudAddressRouteArgs());
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.CrudAddressPage(
          key: args.key,
          initialAddress: args.initialAddress,
          type: args.type,
        ),
      );
    },
    ReceiveAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveAddressRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.ReceiveAddressPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    ReceiveDetailAccountRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveDetailAccountRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.ReceiveDetailAccountPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserAccountInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserAccountInfoRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.UserAccountInfoPage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    UserEmailInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserEmailInfoRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.UserEmailInfoPage(
          key: args.key,
        ),
      );
    },
    UserPhoneInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserPhoneInfoRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.UserPhoneInfoPage(
          key: args.key,
        ),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.UserInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.UserOrderDetailPage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.UserOrderPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i28.PageRouteInfo<void> {
  const AboutRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChangePasswordPage]
class ChangePasswordRoute extends _i28.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i29.Key? key,
    required String userID,
    required String uuid,
    List<_i28.PageRouteInfo>? children,
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

  static const _i28.PageInfo<ChangePasswordRouteArgs> page =
      _i28.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i29.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i3.ForgotPasswordPage]
class ForgotPasswordRoute extends _i28.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i28.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i30.Future<bool> Function(String) confirmOTPFunc,
    required _i30.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i29.Key? key,
    String? successMessage,
    List<_i28.PageRouteInfo>? children,
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

  static const _i28.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i28.PageInfo<AuthOtpConfirmRouteArgs>(name);
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

  final _i30.Future<bool> Function(String) confirmOTPFunc;

  final _i30.Future<Object?> Function() onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i29.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i28.PageRouteInfo<void> {
  const SignUpRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CheckoutPage]
class CheckoutRoute extends _i28.PageRouteInfo<void> {
  const CheckoutRoute({List<_i28.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MainPage]
class MainRoute extends _i28.PageRouteInfo<void> {
  const MainRoute({List<_i28.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MessagePage]
class MessageRoute extends _i28.PageRouteInfo<void> {
  const MessageRoute({List<_i28.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NotificationDetailPage]
class NotificationDetailRoute
    extends _i28.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i29.Key? key,
    required _i31.NotificationDetailModel item,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i28.PageInfo<NotificationDetailRouteArgs> page =
      _i28.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i29.Key? key;

  final _i31.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i12.NotificationMainPage]
class NotificationMainRoute extends _i28.PageRouteInfo<void> {
  const NotificationMainRoute({List<_i28.PageRouteInfo>? children})
      : super(
          NotificationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationMainRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProductDetailPage]
class ProductDetailRoute extends _i28.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i29.Key? key,
    required _i32.ProductEntity product,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i28.PageInfo<ProductDetailRouteArgs> page =
      _i28.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i29.Key? key;

  final _i32.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i14.ProductSearchPage]
class ProductSearchRoute extends _i28.PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    _i29.Key? key,
    _i32.ProductFilterData? filterData,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProductSearchRoute.name,
          args: ProductSearchRouteArgs(
            key: key,
            filterData: filterData,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static const _i28.PageInfo<ProductSearchRouteArgs> page =
      _i28.PageInfo<ProductSearchRouteArgs>(name);
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.filterData,
  });

  final _i29.Key? key;

  final _i32.ProductFilterData? filterData;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, filterData: $filterData}';
  }
}

/// generated route for
/// [_i15.ProductRatingPage]
class ProductRatingRoute extends _i28.PageRouteInfo<void> {
  const ProductRatingRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ProductRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchPage]
class SearchRoute extends _i28.PageRouteInfo<void> {
  const SearchRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ShoppingCartPage]
class ShoppingCartRoute extends _i28.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i18.UserAccountPage]
class UserAccountRoute extends _i28.PageRouteInfo<void> {
  const UserAccountRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i19.CrudAddressPage]
class CrudAddressRoute extends _i28.PageRouteInfo<CrudAddressRouteArgs> {
  CrudAddressRoute({
    _i29.Key? key,
    _i33.UserAddressEntity? initialAddress,
    _i19.CrudAddressType type = _i19.CrudAddressType.add,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          CrudAddressRoute.name,
          args: CrudAddressRouteArgs(
            key: key,
            initialAddress: initialAddress,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CrudAddressRoute';

  static const _i28.PageInfo<CrudAddressRouteArgs> page =
      _i28.PageInfo<CrudAddressRouteArgs>(name);
}

class CrudAddressRouteArgs {
  const CrudAddressRouteArgs({
    this.key,
    this.initialAddress,
    this.type = _i19.CrudAddressType.add,
  });

  final _i29.Key? key;

  final _i33.UserAddressEntity? initialAddress;

  final _i19.CrudAddressType type;

  @override
  String toString() {
    return 'CrudAddressRouteArgs{key: $key, initialAddress: $initialAddress, type: $type}';
  }
}

/// generated route for
/// [_i20.ReceiveAddressPage]
class ReceiveAddressRoute extends _i28.PageRouteInfo<ReceiveAddressRouteArgs> {
  ReceiveAddressRoute({
    _i29.Key? key,
    required _i34.UserEntity user,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ReceiveAddressRoute.name,
          args: ReceiveAddressRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveAddressRoute';

  static const _i28.PageInfo<ReceiveAddressRouteArgs> page =
      _i28.PageInfo<ReceiveAddressRouteArgs>(name);
}

class ReceiveAddressRouteArgs {
  const ReceiveAddressRouteArgs({
    this.key,
    required this.user,
  });

  final _i29.Key? key;

  final _i34.UserEntity user;

  @override
  String toString() {
    return 'ReceiveAddressRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i21.ReceiveDetailAccountPage]
class ReceiveDetailAccountRoute
    extends _i28.PageRouteInfo<ReceiveDetailAccountRouteArgs> {
  ReceiveDetailAccountRoute({
    _i29.Key? key,
    required _i34.UserEntity user,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ReceiveDetailAccountRoute.name,
          args: ReceiveDetailAccountRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveDetailAccountRoute';

  static const _i28.PageInfo<ReceiveDetailAccountRouteArgs> page =
      _i28.PageInfo<ReceiveDetailAccountRouteArgs>(name);
}

class ReceiveDetailAccountRouteArgs {
  const ReceiveDetailAccountRouteArgs({
    this.key,
    required this.user,
  });

  final _i29.Key? key;

  final _i34.UserEntity user;

  @override
  String toString() {
    return 'ReceiveDetailAccountRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i22.UserAccountInfoPage]
class UserAccountInfoRoute
    extends _i28.PageRouteInfo<UserAccountInfoRouteArgs> {
  UserAccountInfoRoute({
    _i35.Key? key,
    required String name,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          UserAccountInfoRoute.name,
          args: UserAccountInfoRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'UserAccountInfoRoute';

  static const _i28.PageInfo<UserAccountInfoRouteArgs> page =
      _i28.PageInfo<UserAccountInfoRouteArgs>(name);
}

class UserAccountInfoRouteArgs {
  const UserAccountInfoRouteArgs({
    this.key,
    required this.name,
  });

  final _i35.Key? key;

  final String name;

  @override
  String toString() {
    return 'UserAccountInfoRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i23.UserEmailInfoPage]
class UserEmailInfoRoute extends _i28.PageRouteInfo<UserEmailInfoRouteArgs> {
  UserEmailInfoRoute({
    _i35.Key? key,
    _i35.EdgeInsets? padding,
    required _i30.Future<List<_i33.UserEmailEntity>> Function(
      int,
      int,
    ) fetchListData,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          UserEmailInfoRoute.name,
          args: UserEmailInfoRouteArgs(
            key: key,
            padding: padding,
            fetchListData: fetchListData,
          ),
          initialChildren: children,
        );

  static const String name = 'UserEmailInfoRoute';

  static const _i28.PageInfo<UserEmailInfoRouteArgs> page =
      _i28.PageInfo<UserEmailInfoRouteArgs>(name);
}

class UserEmailInfoRouteArgs {
  const UserEmailInfoRouteArgs({
    this.key,
    this.padding,
    required this.fetchListData,
  });

  final _i35.Key? key;

  final _i35.EdgeInsets? padding;

  final _i30.Future<List<_i33.UserEmailEntity>> Function(
    int,
    int,
  ) fetchListData;

  @override
  String toString() {
    return 'UserEmailInfoRouteArgs{key: $key, padding: $padding, fetchListData: $fetchListData}';
  }
}

/// generated route for
/// [_i24.UserPhoneInfoPage]
class UserPhoneInfoRoute extends _i28.PageRouteInfo<UserPhoneInfoRouteArgs> {
  UserPhoneInfoRoute({
    _i35.Key? key,
    required _i30.Future<List<_i33.UserPhoneEntity>> Function(
      int,
      int,
    ) fetchListData,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          UserPhoneInfoRoute.name,
          args: UserPhoneInfoRouteArgs(
            key: key,
            fetchListData: fetchListData,
          ),
          initialChildren: children,
        );

  static const String name = 'UserPhoneInfoRoute';

  static const _i28.PageInfo<UserPhoneInfoRouteArgs> page =
      _i28.PageInfo<UserPhoneInfoRouteArgs>(name);
}

class UserPhoneInfoRouteArgs {
  const UserPhoneInfoRouteArgs({
    this.key,
    required this.fetchListData,
  });

  final _i35.Key? key;

  final _i30.Future<List<_i33.UserPhoneEntity>> Function(
    int,
    int,
  ) fetchListData;

  @override
  String toString() {
    return 'UserPhoneInfoRouteArgs{key: $key, fetchListData: $fetchListData}';
  }
}

/// generated route for
/// [_i25.UserInfoPage]
class UserInfoRoute extends _i28.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i29.Key? key,
    required _i33.UserEntity user,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i28.PageInfo<UserInfoRouteArgs> page =
      _i28.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i29.Key? key;

  final _i33.UserEntity user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i26.UserOrderDetailPage]
class UserOrderDetailRoute extends _i28.PageRouteInfo<void> {
  const UserOrderDetailRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UserOrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i27.UserOrderPage]
class UserOrderRoute extends _i28.PageRouteInfo<void> {
  const UserOrderRoute({List<_i28.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}
