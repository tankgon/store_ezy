import 'package:mulstore/all_file/all_file.dart';

final userRoutes = [
  AutoRoute(
    path: '/user-info',
    page: UserInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-receive-address',
    page: ReceiveAddressRoute.page,
  ),
];
