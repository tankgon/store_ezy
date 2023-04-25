import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/home/presentation/main/home_page.dart';
import 'package:mulstore/app/features/notification/presentation/detail/notification_detail_page.dart';
import 'package:mulstore/app/features/notification/presentation/main/notification_main_page.dart';

const notificationRoutes = [
  AutoRoute(
    path: '/notification-main',
    page: NotificationMainPage,
  ),
  AutoRoute(
    path: '/notification-detail',
    page: NotificationDetailPage,
  ),
];
