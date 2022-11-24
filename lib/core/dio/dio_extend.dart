import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';
import 'package:flutter/services.dart';

class RepoError implements Exception {
  final String errorMsg;

  RepoError(this.errorMsg);
}

extension DioErrorExtend on Object? {
  String? getServerErrorCode() {
    if (this is DioError) {
      var errorCode = castOrNull<String>((this as DioError).response?.data?['errorCode']);
      return errorCode;
    }
    return null;
  }

  T? getErrorCodeDataValue<T>(String key) {
    if (this is DioError) {
      return castOrNull<T>((this as DioError).response?.data?[key]);
    }
    return null;
  }

  String getServerErrorMsg() {
    final object = this;
    if (object is RepoError) {
      return object.errorMsg;
    }
    if (object is DioError) {
      final dioError = object;
      if (dioError.response?.statusCode == 401) {
        return 'pleaseLogin'.tr;
      }
      if (dioError.error.toString().contains('Failed host lookup')) {
        return 'reconnectMsg'.tr;
      }
      final errorCode = dioError.response?.data['errorCode'] as String?;
      if (errorCode != null) {
        if (errorCode == 'ER0040' || errorCode == 'ER0023') {
          final todayStr = dioError.response?.data['today'] as String?;
          final expiredBlockStr = dioError.response?.data['expiredBlock'] as String?;
          final today = TimeUtils.strUtcToDateLocale(todayStr);
          final expired = TimeUtils.strUtcToDateLocale(expiredBlockStr);
          final timeDifferStr = TimeUtils.getTimeDifferStr(today, expired);
          logger.i('timeDifferStr $timeDifferStr');

          return errorCode.tr.replaceFirst('<time>', timeDifferStr ?? 'fewMinus'.tr);
        }

        return errorCode.tr;
      }
    }
    if (kDebugMode || AppConfig.IN_DEV || Get.find<UserSecureStorage>().developerMode == true) {
      if (object is PlatformException) {
        return '${(object as PlatformException).message} \n\n\n---\n\n\n ${(object as PlatformException).stacktrace} \n\n\n---\n\n\n $object';
      }
      return '$object';
    }
    return 'errorPleaseRetry'.tr;
  }
}
