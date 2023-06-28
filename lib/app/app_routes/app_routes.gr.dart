// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i25;

import 'package:auto_route/auto_route.dart' as _i24;
import 'package:mulstore/all_file/all_file.dart' as _i26;
import 'package:mulstore/app/features/about/presentation/main/about_page.dart'
    as _i16;
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
    as _i19;
import 'package:mulstore/app/features/home/presentation/main/home_page.dart'
    as _i1;
import 'package:mulstore/app/features/main/presentation/main_page.dart' as _i21;
import 'package:mulstore/app/features/message/presentation/main/message_page.dart'
    as _i12;
import 'package:mulstore/app/features/notification/data/model/notification_model.dart'
    as _i27;
import 'package:mulstore/app/features/notification/presentation/detail/notification_detail_page.dart'
    as _i8;
import 'package:mulstore/app/features/notification/presentation/main/notification_main_page.dart'
    as _i9;
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart'
    as _i30;
import 'package:mulstore/app/features/product/presentation/detail/product_detail_page.dart'
    as _i18;
import 'package:mulstore/app/features/product/presentation/product_search/product_search_page.dart'
    as _i17;
import 'package:mulstore/app/features/product_rating/presentation/main/product_rating_page.dart'
    as _i2;
import 'package:mulstore/app/features/search/presentation/main/search_page.dart'
    as _i20;
import 'package:mulstore/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i22;
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart'
    as _i29;
import 'package:mulstore/app/features/user/presentation/account/user_account_page.dart'
    as _i15;
import 'package:mulstore/app/features/user/presentation/address/crud_address/crud_address_page.dart'
    as _i23;
import 'package:mulstore/app/features/user/presentation/address/receive_address/receive_address_page.dart'
    as _i14;
import 'package:mulstore/app/features/user/presentation/info/user_info_page.dart'
    as _i13;
import 'package:mulstore/app/features/user/self.dart' as _i28;
import 'package:mulstore/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i10;
import 'package:mulstore/app/features/user_order/presentation/main/user_order_page.dart'
    as _i11;

abstract class $AppAutoRoute extends _i24.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProductRatingPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
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
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationMainPage(),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserOrderDetailPage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserOrderPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MessagePage(),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.UserInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    ReceiveAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveAddressRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ReceiveAddressPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.UserAccountPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.AboutPage(),
      );
    },
    ProductSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ProductSearchRouteArgs>(
          orElse: () => const ProductSearchRouteArgs());
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ProductSearchPage(
          key: args.key,
          filterData: args.filterData,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.CheckoutPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SearchPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.MainPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ShoppingCartPage(),
      );
    },
    CrudAddressRoute.name: (routeData) {
      final args = routeData.argsAs<CrudAddressRouteArgs>(
          orElse: () => const CrudAddressRouteArgs());
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.CrudAddressPage(
          key: args.key,
          initialAddress: args.initialAddress,
          addAddressFuture: args.addAddressFuture,
          updateAddressFuture: args.updateAddressFuture,
          removeAddressFuture: args.removeAddressFuture,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i24.PageRouteInfo<void> {
  const HomeRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductRatingPage]
class ProductRatingRoute extends _i24.PageRouteInfo<void> {
  const ProductRatingRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ProductRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i24.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i25.Future<bool> Function(String) confirmOTPFunc,
    required _i25.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i26.Key? key,
    String? successMessage,
    List<_i24.PageRouteInfo>? children,
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

  static const _i24.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i24.PageInfo<AuthOtpConfirmRouteArgs>(name);
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

  final _i25.Future<bool> Function(String) confirmOTPFunc;

  final _i25.Future<Object?> Function() onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i26.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i4.ChangePasswordPage]
class ChangePasswordRoute extends _i24.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i26.Key? key,
    required String userID,
    required String uuid,
    List<_i24.PageRouteInfo>? children,
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

  static const _i24.PageInfo<ChangePasswordRouteArgs> page =
      _i24.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i26.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i24.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i24.PageRouteInfo<void> {
  const SignUpRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i24.PageRouteInfo<void> {
  const LoginRoute({List<_i24.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationDetailPage]
class NotificationDetailRoute
    extends _i24.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i26.Key? key,
    required _i27.NotificationDetailModel item,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i24.PageInfo<NotificationDetailRouteArgs> page =
      _i24.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i26.Key? key;

  final _i27.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i9.NotificationMainPage]
class NotificationMainRoute extends _i24.PageRouteInfo<void> {
  const NotificationMainRoute({List<_i24.PageRouteInfo>? children})
      : super(
          NotificationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationMainRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UserOrderDetailPage]
class UserOrderDetailRoute extends _i24.PageRouteInfo<void> {
  const UserOrderDetailRoute({List<_i24.PageRouteInfo>? children})
      : super(
          UserOrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UserOrderPage]
class UserOrderRoute extends _i24.PageRouteInfo<void> {
  const UserOrderRoute({List<_i24.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MessagePage]
class MessageRoute extends _i24.PageRouteInfo<void> {
  const MessageRoute({List<_i24.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UserInfoPage]
class UserInfoRoute extends _i24.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i26.Key? key,
    required _i28.UserEntity user,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i24.PageInfo<UserInfoRouteArgs> page =
      _i24.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i26.Key? key;

  final _i28.UserEntity user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i14.ReceiveAddressPage]
class ReceiveAddressRoute extends _i24.PageRouteInfo<ReceiveAddressRouteArgs> {
  ReceiveAddressRoute({
    _i26.Key? key,
    required _i29.UserEntity user,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          ReceiveAddressRoute.name,
          args: ReceiveAddressRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveAddressRoute';

  static const _i24.PageInfo<ReceiveAddressRouteArgs> page =
      _i24.PageInfo<ReceiveAddressRouteArgs>(name);
}

class ReceiveAddressRouteArgs {
  const ReceiveAddressRouteArgs({
    this.key,
    required this.user,
  });

  final _i26.Key? key;

  final _i29.UserEntity user;

  @override
  String toString() {
    return 'ReceiveAddressRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i15.UserAccountPage]
class UserAccountRoute extends _i24.PageRouteInfo<void> {
  const UserAccountRoute({List<_i24.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i16.AboutPage]
class AboutRoute extends _i24.PageRouteInfo<void> {
  const AboutRoute({List<_i24.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ProductSearchPage]
class ProductSearchRoute extends _i24.PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    _i26.Key? key,
    _i30.ProductFilterData? filterData,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          ProductSearchRoute.name,
          args: ProductSearchRouteArgs(
            key: key,
            filterData: filterData,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static const _i24.PageInfo<ProductSearchRouteArgs> page =
      _i24.PageInfo<ProductSearchRouteArgs>(name);
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.filterData,
  });

  final _i26.Key? key;

  final _i30.ProductFilterData? filterData;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, filterData: $filterData}';
  }
}

/// generated route for
/// [_i18.ProductDetailPage]
class ProductDetailRoute extends _i24.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i26.Key? key,
    required _i30.ProductEntity product,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i24.PageInfo<ProductDetailRouteArgs> page =
      _i24.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i26.Key? key;

  final _i30.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i19.CheckoutPage]
class CheckoutRoute extends _i24.PageRouteInfo<void> {
  const CheckoutRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SearchPage]
class SearchRoute extends _i24.PageRouteInfo<void> {
  const SearchRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i21.MainPage]
class MainRoute extends _i24.PageRouteInfo<void> {
  const MainRoute({List<_i24.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ShoppingCartPage]
class ShoppingCartRoute extends _i24.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i24.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i23.CrudAddressPage]
class CrudAddressRoute extends _i24.PageRouteInfo<CrudAddressRouteArgs> {
  CrudAddressRoute({
    _i26.Key? key,
    _i28.UserAddressEntity? initialAddress,
    _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
        addAddressFuture,
    _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
        updateAddressFuture,
    _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
        removeAddressFuture,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          CrudAddressRoute.name,
          args: CrudAddressRouteArgs(
            key: key,
            initialAddress: initialAddress,
            addAddressFuture: addAddressFuture,
            updateAddressFuture: updateAddressFuture,
            removeAddressFuture: removeAddressFuture,
          ),
          initialChildren: children,
        );

  static const String name = 'CrudAddressRoute';

  static const _i24.PageInfo<CrudAddressRouteArgs> page =
      _i24.PageInfo<CrudAddressRouteArgs>(name);
}

class CrudAddressRouteArgs {
  const CrudAddressRouteArgs({
    this.key,
    this.initialAddress,
    this.addAddressFuture,
    this.updateAddressFuture,
    this.removeAddressFuture,
  });

  final _i26.Key? key;

  final _i28.UserAddressEntity? initialAddress;

  final _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
      addAddressFuture;

  final _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
      updateAddressFuture;

  final _i25.Future<_i28.UserAddressEntity> Function(_i28.UserAddressEntity)?
      removeAddressFuture;

  @override
  String toString() {
    return 'CrudAddressRouteArgs{key: $key, initialAddress: $initialAddress, addAddressFuture: $addAddressFuture, updateAddressFuture: $updateAddressFuture, removeAddressFuture: $removeAddressFuture}';
  }
}
