import 'package:app_utils/view/app_info_utils.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/services/firebase_notification_service.dart';

class DeviceService {
  DeviceService();

  Future<FCMTokenReq> getFCMTokenReq() async {
    try {
      final deviceID = await AppInfoUtils.getDeviceID();
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
        log(e.toString(), error: e);
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
