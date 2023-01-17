import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/services/firebase_notification_service.dart';

class DeviceService {
  DeviceService();

  Future<FCMTokenReq> getFCMTokenReq() async {
    try {
      final deviceID = await AppUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();

      return Future.value(
        FCMTokenReq(
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: 'MOBILEAPP',
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        logger.e(e);
        return Future.error(e);
      } else {
        return Future.value(
          const FCMTokenReq(
            deviceID: '',
            deviceToken: '',
            type: 'MOBILEAPP',
          ),
        );
      }
    }
  }
}
