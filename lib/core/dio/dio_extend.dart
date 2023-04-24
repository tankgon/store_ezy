import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';
import 'package:flutter/services.dart';

class RepoError implements Exception {
  RepoError(this.error);

  final String error;
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
      return object.error;
    }
    if (object is DioError) {
      final dioError = object;
      if (dioError.response?.statusCode == 401) {
        return 'Please login'.tr();
      }
      if (dioError.error.toString().contains('Failed host lookup')) {
        return 'Reconnect'.tr();
      }
      if (dioError.response?.data is Map) {
        final errorCode = (dioError.response?.data as Map)['errorCode'] as String?;
        if (errorCode != null) {
          return errorCode.tr();
        }
      }
    }
    if (kDebugMode || AppConfig.IN_DEV || getIt<UserSecureStorage>().developerMode == true) {
      if (object is PlatformException) {
        return '${object.message} \n\n\n---\n\n\n ${object.stacktrace} \n\n\n---\n\n\n $object';
      }
      return '$object';
    }
    return 'Something went wrong. Please try again'.tr();
  }

  String? getServerErrorVar(String key) {
    final object = this;
    if (object is RepoError) {
      return object.error;
    }
    if (object is DioError) {
      final data = object.response?.data;
      if (data is Map) {
        return data[key] as String?;
      }
    }
    return null;
  }
}
